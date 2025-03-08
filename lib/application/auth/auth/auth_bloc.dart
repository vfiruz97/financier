import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/auth/auth_facade.dart';
import '../../../domain/financier/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(this.authFacade) : super(AuthState.initial()) {
    on<_CheckAuth>(_onCheckAuth);
    on<_LogOut>(_onLogOut);
  }

  FutureOr<void> _onCheckAuth(_CheckAuth event, Emitter<AuthState> emit) async {
    emit(state.copyWith(checking: true));
    final response = await authFacade.getSignedUser();
    response.fold(
      (_) => emit(state.copyWith(user: User.empty(), token: '', isAuthed: false, checking: false)),
      (auth) => emit(state.copyWith(user: auth.user, token: auth.token, isAuthed: true, checking: false)),
    );
  }

  FutureOr<void> _onLogOut(_LogOut event, Emitter<AuthState> emit) async {
    emit(state.copyWith(checking: true));
    await authFacade.signOut();
    emit(state.copyWith(token: '', isAuthed: false, checking: false));
  }
}
