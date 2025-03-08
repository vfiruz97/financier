part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required bool submitting,
    required bool validateForm,
    required Option<Either<AuthFailure, Auth>> failureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: Email(''),
        password: Password(''),
        submitting: false,
        validateForm: false,
        failureOrSuccessOption: none(),
      );
}
