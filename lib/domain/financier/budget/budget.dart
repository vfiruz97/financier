import '../../core/value_objects.dart';
import '../user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget.freezed.dart';

@freezed
abstract class Budget with _$Budget {
  const factory Budget({
    required UniqueId id,
    required Name name,
    required String userId,
    required bool active,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Budget;

  factory Budget.empty() => Budget(
        id: UniqueId(),
        name: Name(''),
        userId: '',
        active: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}

@freezed
abstract class BudgetWithRelationship with _$BudgetWithRelationship {
  const factory BudgetWithRelationship({
    required Budget budget,
    required User? user,
  }) = _BudgetWithRelationship;
}
