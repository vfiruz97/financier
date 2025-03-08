part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.changeEmail(String emailStr) = _ChangeEmail;
  const factory RegisterEvent.changePassword(String passwordStr) = _ChangePassword;
  const factory RegisterEvent.registerByLoginAndPassword() = _RegisterByLoginAndPassword;
}
