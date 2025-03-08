part of 'account_update_bloc.dart';

@freezed
class AccountUpdateState with _$AccountUpdateState {
  const factory AccountUpdateState({
    required Account account,
    required Account accountBlack,
    required bool showDeleted,
    required Option<Either<AccountFailure, Unit>> failureOrSuccessOption,
  }) = _AccountUpdateState;

  factory AccountUpdateState.initial() => AccountUpdateState(
        account: Account.empty(),
        accountBlack: Account.empty(),
        showDeleted: false,
        failureOrSuccessOption: none(),
      );
}
