import 'package:dartz/dartz.dart';
import '../../../domain/financier/budget/budget.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/budget/budget_facade.dart';
import '../../../domain/financier/budget/budget_failure.dart';
import '../../database/daos/account_dao.dart';
import '../../database/daos/budget_dao.dart';
import '../../database/daos/plan_dao.dart';
import '../../database/daos/transaction_dao.dart';
import 'budget_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IBudgetFacade)
class BudgetFacade implements IBudgetFacade {
  final BudgetsDao budgetsDao;
  final AccountsDao accountsDao;
  final TransactionsDao transactionsDao;
  final PlansDao plansDao;
  BudgetFacade(this.budgetsDao, this.accountsDao, this.transactionsDao, this.plansDao);

  @override
  Future<Either<BudgetFailure, Unit>> create(Budget budget) async {
    try {
      if (budget.active) {
        await _disactiveBudgets();
      }
      await budgetsDao.addBudget(BudgetDto.fromDomain(budget).toDrift());
      return right(unit);
    } catch (e) {
      return left(const BudgetFailure.unexpected());
    }
  }

  Future<void> _disactiveBudgets() async {
    final activeBudgets = (await getAll()).fold(() => null, (budgets) => budgets.filter((b) => b.budget.active));
    if (activeBudgets != null) {
      activeBudgets.forEach((b) async {
        await update(b.budget.copyWith(active: false));
      });
    }
  }

  @override
  Future<Unit> delete(Budget budget) async {
    final budgetId = budget.id.getOrCrash();

    // get accounts by budgetId
    final accounts = await accountsDao.getByBudgetId(budgetId);

    if (accounts.length() > 0) {
      final accountIds = accounts.map((a) => a.account.id.getOrCrash()).toList();
      // delete accounts where id in
      await accountsDao.deleteAccountWhereIdIn(accountIds);

      // delete transactions where account_id in
      await transactionsDao.deleteTransactionWhereAccountIdIn(accountIds);
    }
    // delete plan by budget id
    await plansDao.deletePlanWhereBudgetId(budgetId);

    // delete budget
    await budgetsDao.deleteBudget(BudgetDto.fromDomain(budget).toDrift());
    return unit;
  }

  @override
  Future<Option<IList<BudgetWithRelationship>>> getAll() async {
    final budgets = await budgetsDao.getAll();
    if (budgets.isEmpty) return none();
    return some(budgets);
  }

  @override
  Future<Option<BudgetWithRelationship>> getById(UniqueId id) async {
    final budget = await budgetsDao.getById(id.getOrCrash());
    if (budget == null) return none();
    return some(budget);
  }

  @override
  Future<Either<BudgetFailure, Unit>> update(Budget budget) async {
    try {
      if (budget.active) {
        await _disactiveBudgets();
      }
      await budgetsDao.updateBudget(BudgetDto.fromDomain(budget).toDrift());
      return right(unit);
    } catch (e) {
      return left(const BudgetFailure.unexpected());
    }
  }
}
