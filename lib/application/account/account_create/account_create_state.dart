part of 'account_create_bloc.dart';

@freezed
class AccountCreateState with _$AccountCreateState {
  const factory AccountCreateState({
    required Account account,
    required bool validateForm,
    required Option<Either<AccountFailure, Unit>> failureOrSuccessOption,
  }) = _AccountCreateState;

  factory AccountCreateState.initial() => AccountCreateState(
        account: Account.empty(),
        validateForm: false,
        failureOrSuccessOption: none(),
      );
}
