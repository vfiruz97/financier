part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeEmail(String emailStr) = _ChangeEmail;
  const factory LoginEvent.changePassword(String passwordStr) = _ChangePassword;
  const factory LoginEvent.loginByLoginAndPassword() = _LoginByLoginAndPassword;
}
