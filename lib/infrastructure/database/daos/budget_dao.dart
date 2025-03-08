import 'package:dartz/dartz.dart';
import '../../../domain/financier/budget/budget.dart' hide Budget;
import '../database.dart';
import '../tables/budgets.dart';
import 'package:drift/drift.dart';
import '../../financier/budget/budget_dto.dart';
import '../../financier/user/user_dto.dart';

part 'budget_dao.g.dart';

@DriftAccessor(tables: [Budgets])
class BudgetsDao extends DatabaseAccessor<AppDatabase> with _$BudgetsDaoMixin {
  BudgetsDao(super.db);

  Future<int> addBudget(BudgetsCompanion entry) {
    return into(budgets).insert(entry);
  }

  Future updateBudget(BudgetsCompanion entity) {
    return update(budgets).replace(entity);
  }

  Future<int> deleteBudget(BudgetsCompanion entry) {
    return (delete(budgets)..where((b) => b.id.equals(entry.id.value))).go();
  }

  Future<IList<BudgetWithRelationship>> getAll() async {
    final users = db.users;
    final rows = await (select(budgets)
          ..orderBy([
            (s) => OrderingTerm(expression: s.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(users, users.id.equalsExp(budgets.userId)),
    ]).get();

    final budgetsData = rows.map((row) {
      final budget = row.readTable(budgets);
      final user = row.readTableOrNull(users);

      return BudgetWithRelationship(
        budget: BudgetDto.fromDrift(budget).toDomain(),
        user: user != null ? UserDto.fromDrift(user).toDomain() : null,
      );
    }).toList();

    return ilist(budgetsData);
  }

  Stream<List<BudgetWithRelationship>> watchAll(String userId) {
    final users = db.users;
    final rows = (select(budgets)
          ..where((tbl) => tbl.userId.equals(userId))
          ..orderBy([
            (s) => OrderingTerm(expression: s.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(users, users.id.equalsExp(budgets.userId)),
    ]);

    return rows.map((row) {
      final budget = row.readTable(budgets);
      final user = row.readTableOrNull(users);

      return BudgetWithRelationship(
        budget: BudgetDto.fromDrift(budget).toDomain(),
        user: user != null ? UserDto.fromDrift(user).toDomain() : null,
      );
    }).watch();
  }

  Future<Budget?> getActiveBudget(String userId) async {
    return await (select(budgets)..where((tbl) => tbl.userId.equals(userId) & tbl.active)).getSingleOrNull();
  }

  Future<BudgetWithRelationship?> getById(String id) async {
    final users = db.users;
    final row = await (select(budgets)..where((tbl) => tbl.id.equals(id))).join([
      leftOuterJoin(users, users.id.equalsExp(budgets.userId)),
    ]).getSingleOrNull();

    if (row != null) {
      final budget = row.readTable(budgets);
      final user = row.readTableOrNull(users);

      return BudgetWithRelationship(
        budget: BudgetDto.fromDrift(budget).toDomain(),
        user: user != null ? UserDto.fromDrift(user).toDomain() : null,
      );
    }
    return null;
  }
}
