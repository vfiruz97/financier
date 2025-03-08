import 'package:dartz/dartz.dart';
import '../../../domain/financier/plan/plan.dart';
import '../database.dart';
import 'package:drift/drift.dart';
import '../tables/plans.dart';
import '../../financier/budget/budget_dto.dart';
import '../../financier/plan/plan_dto.dart';

part 'plan_dao.g.dart';

@DriftAccessor(tables: [Plans])
class PlansDao extends DatabaseAccessor<AppDatabase> with _$PlansDaoMixin {
  PlansDao(super.db);

  Future<int> addPlan(PlansCompanion entry) {
    return into(plans).insert(entry);
  }

  Future<bool> updatePlan(PlansCompanion entry) {
    return update(plans).replace(entry);
  }

  Future<int> deletePlan(PlansCompanion entry) {
    return (delete(plans)..where((tbl) => tbl.id.equals(entry.id.value))).go();
  }

  Future<int> deletePlanWhereBudgetId(String budgetId) {
    return (delete(plans)..where((tbl) => tbl.budgetId.equals(budgetId))).go();
  }

  Future<IList<PlanWithRelationship>> getAll() async {
    final budgets = db.budgets;
    final rows = await (select(plans)..orderBy([(t) => OrderingTerm.asc(t.endDate)])).join([
      leftOuterJoin(budgets, budgets.id.equalsExp(plans.budgetId)),
    ]).get();

    return ilist(rows.map((row) {
      final plansRow = row.readTable(plans);
      final budgetsRow = row.readTableOrNull(budgets);

      return PlanWithRelationship(
        plan: PlanDto.fromDrift(plansRow).toDomain(),
        budget: budgetsRow != null ? BudgetDto.fromDrift(budgetsRow).toDomain() : null,
      );
    }).toList());
  }

  Stream<List<PlanWithRelationship>> watchAll(String budgetId) {
    final budgets = db.budgets;
    final rows = (select(plans)
          ..where((tbl) => tbl.budgetId.equals(budgetId))
          ..orderBy([(t) => OrderingTerm.asc(t.endDate)]))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(plans.budgetId)),
    ]);

    return rows.map((row) {
      final plansRow = row.readTable(plans);
      final budgetsRow = row.readTableOrNull(budgets);

      return PlanWithRelationship(
        plan: PlanDto.fromDrift(plansRow).toDomain(),
        budget: budgetsRow != null ? BudgetDto.fromDrift(budgetsRow).toDomain() : null,
      );
    }).watch();
  }

  Stream<List<PlanWithRelationship>> watchActivePlans(String budgetId) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);

    final budgets = db.budgets;
    final rows = (select(plans)
          ..where((tbl) => tbl.budgetId.equals(budgetId) & tbl.endDate.isBiggerOrEqualValue(today))
          ..orderBy([(t) => OrderingTerm.asc(t.endDate)]))
        .join([
      leftOuterJoin(budgets, budgets.id.equalsExp(plans.budgetId)),
    ]);

    return rows.map((row) {
      final plansRow = row.readTable(plans);
      final budgetsRow = row.readTableOrNull(budgets);

      return PlanWithRelationship(
        plan: PlanDto.fromDrift(plansRow).toDomain(),
        budget: budgetsRow != null ? BudgetDto.fromDrift(budgetsRow).toDomain() : null,
      );
    }).watch();
  }

  Future<PlanWithRelationship?> getById(String id) async {
    final budgets = db.budgets;
    final row = await (select(plans)..orderBy([(t) => OrderingTerm.desc(t.createdAt)])).join([
      leftOuterJoin(budgets, budgets.id.equalsExp(plans.budgetId)),
    ]).getSingleOrNull();

    if (row != null) {
      final plansRow = row.readTable(plans);
      final budgetsRow = row.readTableOrNull(budgets);

      return PlanWithRelationship(
        plan: PlanDto.fromDrift(plansRow).toDomain(),
        budget: budgetsRow != null ? BudgetDto.fromDrift(budgetsRow).toDomain() : null,
      );
    }

    return null;
  }
}
