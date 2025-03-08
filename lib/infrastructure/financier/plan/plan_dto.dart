import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/plan/plan.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_dto.freezed.dart';

@freezed
abstract class PlanDto with _$PlanDto {
  const PlanDto._();

  factory PlanDto({
    required String id,
    required double incomeBalance,
    required double expenseBalance,
    required String budgetId,
    required int currencyId,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PlanDto;

  factory PlanDto.fromDomain(Plan plan) {
    return PlanDto(
      id: plan.id.getOrCrash(),
      incomeBalance: plan.incomeBalance.getOrCrash(),
      expenseBalance: plan.expenseBalance.getOrCrash(),
      budgetId: plan.budgetId,
      currencyId: plan.currencyId.getOrCrash(),
      startDate: plan.startDate,
      endDate: plan.endDate,
      createdAt: plan.createdAt,
      updatedAt: plan.updatedAt,
    );
  }

  Plan toDomain() {
    return Plan(
      id: UniqueId.fromUniqueString(id),
      incomeBalance: Balance(incomeBalance),
      expenseBalance: Balance(expenseBalance),
      budgetId: budgetId,
      currencyId: CurrencyId(currencyId),
      startDate: startDate,
      endDate: endDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory PlanDto.fromDrift(db.Plan plan) {
    return PlanDto(
      id: plan.id,
      incomeBalance: plan.incomeBalance,
      expenseBalance: plan.expenseBalance,
      budgetId: plan.budgetId,
      currencyId: plan.currencyId,
      endDate: plan.endDate,
      startDate: plan.startDate,
      createdAt: plan.createdAt,
      updatedAt: plan.updatedAt,
    );
  }

  db.PlansCompanion toDrift() {
    return db.PlansCompanion(
      id: Value(id),
      incomeBalance: Value(incomeBalance),
      expenseBalance: Value(expenseBalance),
      budgetId: Value(budgetId),
      currencyId: Value(currencyId),
      startDate: Value(startDate),
      endDate: Value(endDate),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }
}
