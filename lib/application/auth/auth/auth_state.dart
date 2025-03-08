part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required User user,
    required String token,
    required bool isAuthed,
    required bool checking,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        user: User.empty(),
        token: '',
        isAuthed: false,
        checking: true,
      );

  String get userId => user.id.getOrElse('undefined');
}
