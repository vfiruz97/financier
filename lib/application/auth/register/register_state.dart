part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required Email email,
    required Password password,
    required bool submitting,
    required bool validateForm,
    required Option<Either<AuthFailure, Auth>> failureOrSuccessOption,
  }) = _Initial;

  factory RegisterState.initial() => RegisterState(
        email: Email(''),
        password: Password(''),
        submitting: false,
        validateForm: false,
        failureOrSuccessOption: none(),
      );
}
