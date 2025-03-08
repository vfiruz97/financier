part of 'budget_create_bloc.dart';

@freezed
class BudgetCreateState with _$BudgetCreateState {
  const factory BudgetCreateState({
    required Budget budget,
    required bool validateForm,
    required Option<Either<BudgetFailure, Unit>> failureOrSuccessOption,
  }) = _BudgetCreateState;

  factory BudgetCreateState.initial() => BudgetCreateState(
        budget: Budget.empty(),
        validateForm: false,
        failureOrSuccessOption: none(),
      );
}
