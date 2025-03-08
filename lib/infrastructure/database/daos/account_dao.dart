import 'package:dartz/dartz.dart';
import '../../../domain/financier/account/account.dart' hide Account;
import '../database.dart';
import '../tables/accounts.dart';
import 'package:drift/drift.dart';
import '../../financier/account/account_dto.dart';
import '../../financier/budget/budget_dto.dart';

part 'account_dao.g.dart';

@DriftAccessor(tables: [Accounts])
class AccountsDao extends DatabaseAccessor<AppDatabase> with _$AccountsDaoMixin {
  AccountsDao(super.db);

  Future<int> addAccount(AccountsCompanion entry) {
    return into(accounts).insert(entry);
  }

  Future<bool> updateAccount(AccountsCompanion entry) {
    return update(accounts).replace(entry);
  }

  Future<int> deleteAccount(AccountsCompanion entry) {
    return (delete(accounts)..where((tbl) => tbl.id.equals(entry.id.value))).go();
  }

  Future<int> deleteAccountWhereIdIn(List<String> ids) {
    return (delete(accounts)..where((tbl) => tbl.id.isIn(ids))).go();
  }

  Future<IList<AccountWithRelationship>> getAll() async {
    final budgets = db.budgets;
    final rows = await (select(accounts)
          ..where((tbl) => tbl.deletedAt.isNull())
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
            ],
          ))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(accounts.budgetId)),
    ]).get();

    final accountsRow = rows.map((row) {
      final accountRows = row.readTable(accounts);
      final budgetRow = row.readTableOrNull(budgets);

      return AccountWithRelationship(
        account: AccountDto.fromDrift(accountRows).toDomain(),
        budget: budgetRow != null ? BudgetDto.fromDrift(budgetRow).toDomain() : null,
      );
    }).toList();

    return ilist(accountsRow);
  }

  Stream<List<dynamic>> watchAllByBudgetId(String budgetId) {
    return (select(accounts)
          ..where((tbl) => tbl.deletedAt.isNull() & tbl.budgetId.equals(budgetId))
          ..orderBy(
            [(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)],
          ))
        .map(
          (row) => AccountDto.fromDrift(row).toDomain(),
        )
        .watch();
  }

  Stream<List<dynamic>> watchAllByBudgetIdAndLimit(String budgetId, {int limit = 5}) {
    return (select(accounts)
          ..where((tbl) => tbl.deletedAt.isNull() & tbl.budgetId.equals(budgetId))
          ..orderBy(
            [(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)],
          )
          ..limit(limit))
        .map(
          (row) => AccountDto.fromDrift(row).toDomain(),
        )
        .watch();
  }

  Stream<List<dynamic>> watchAllWithDeletedByBudgetId(String budgetId) {
    return (select(accounts)
          ..where((tbl) => tbl.budgetId.equals(budgetId))
          ..orderBy(
            [(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)],
          ))
        .map(
          (row) => AccountDto.fromDrift(row).toDomain(),
        )
        .watch();
  }

  Future<List<Account>> getAllByBudgetId(String budgetId) async {
    return await (select(accounts)..where((tbl) => tbl.deletedAt.isNull() & tbl.budgetId.equals(budgetId))).get();
  }

  Future<IList<AccountWithRelationship>> getAllDeleted() async {
    final budgets = db.budgets;
    final rows = await (select(accounts)
          ..where((tbl) => tbl.deletedAt.isNotNull())
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
            ],
          ))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(accounts.budgetId)),
    ]).get();

    final accountsRow = rows.map((row) {
      final accountRows = row.readTable(accounts);
      final budgetRow = row.readTableOrNull(budgets);

      return AccountWithRelationship(
        account: AccountDto.fromDrift(accountRows).toDomain(),
        budget: budgetRow != null ? BudgetDto.fromDrift(budgetRow).toDomain() : null,
      );
    }).toList();

    return ilist(accountsRow);
  }

  Future<IList<AccountWithRelationship>> getByBudgetId(String budgetId) async {
    final budgets = db.budgets;
    final rows = await (select(accounts)
          ..where((tbl) => tbl.budgetId.equals(budgetId))
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
            ],
          ))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(accounts.budgetId)),
    ]).get();

    final accountsRow = rows.map((row) {
      final accountRows = row.readTable(accounts);
      final budgetRow = row.readTableOrNull(budgets);

      return AccountWithRelationship(
        account: AccountDto.fromDrift(accountRows).toDomain(),
        budget: budgetRow != null ? BudgetDto.fromDrift(budgetRow).toDomain() : null,
      );
    }).toList();

    return ilist(accountsRow);
  }

  Future<IList<AccountWithRelationship>> getAllWithDeleted() async {
    final budgets = db.budgets;
    final rows = await (select(accounts)
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
            ],
          ))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(accounts.budgetId)),
    ]).get();

    final accountsRow = rows.map((row) {
      final accountRows = row.readTable(accounts);
      final budgetRow = row.readTableOrNull(budgets);

      return AccountWithRelationship(
        account: AccountDto.fromDrift(accountRows).toDomain(),
        budget: budgetRow != null ? BudgetDto.fromDrift(budgetRow).toDomain() : null,
      );
    }).toList();

    return ilist(accountsRow);
  }

  Future<AccountWithRelationship?> getById(String id) async {
    final budgets = db.budgets;
    final row = await (select(accounts)..where((tbl) => tbl.id.equals(id))).join([
      leftOuterJoin(budgets, budgets.id.equalsExp(accounts.budgetId)),
    ]).getSingleOrNull();

    if (row != null) {
      final accountRows = row.readTable(accounts);
      final budgetRow = row.readTableOrNull(budgets);

      return AccountWithRelationship(
        account: AccountDto.fromDrift(accountRows).toDomain(),
        budget: budgetRow != null ? BudgetDto.fromDrift(budgetRow).toDomain() : null,
      );
    }
    return null;
  }
}
