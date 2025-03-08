import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/budget/budget.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_dto.freezed.dart';

@freezed
abstract class BudgetDto with _$BudgetDto {
  const BudgetDto._();

  const factory BudgetDto({
    required String id,
    required String name,
    required String userId,
    required bool active,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BudgetDto;

  factory BudgetDto.fromDomain(Budget budget) {
    return BudgetDto(
      id: budget.id.getOrCrash(),
      name: budget.name.getOrCrash(),
      userId: budget.userId,
      active: budget.active,
      createdAt: budget.createdAt,
      updatedAt: budget.updatedAt,
    );
  }

  Budget toDomain() {
    return Budget(
      id: UniqueId.fromUniqueString(id),
      name: Name(name),
      userId: userId,
      active: active,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory BudgetDto.fromDrift(db.Budget budget) {
    return BudgetDto(
      id: budget.id,
      name: budget.name,
      userId: budget.userId,
      active: budget.active,
      createdAt: budget.createdAt,
      updatedAt: budget.updatedAt,
    );
  }

  db.BudgetsCompanion toDrift() {
    return db.BudgetsCompanion(
      id: Value(id),
      name: Value(name),
      userId: Value(userId),
      active: Value(active),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }
}
