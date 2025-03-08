import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_failure.freezed.dart';

@freezed
abstract class BudgetFailure with _$BudgetFailure {
  const factory BudgetFailure.unexpected() = _UnexpectedBudgetFailure;
}
