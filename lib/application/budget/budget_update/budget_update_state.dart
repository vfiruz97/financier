part of 'budget_update_bloc.dart';

@freezed
class BudgetUpdateState with _$BudgetUpdateState {
  const factory BudgetUpdateState({
    required Budget budget,
    required bool validateForm,
    required Option<Either<BudgetFailure, Unit>> failureOrSuccessOption,
  }) = _Initial;

  factory BudgetUpdateState.initial() => BudgetUpdateState(
        budget: Budget.empty(),
        validateForm: false,
        failureOrSuccessOption: none(),
      );
}
