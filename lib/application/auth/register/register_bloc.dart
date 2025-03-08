import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth.dart';
import '../../../domain/auth/auth_facade.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade authFacade;

  RegisterBloc(this.authFacade) : super(RegisterState.initial()) {
    on<_ChangeEmail>(_onChangeEmail);
    on<_ChangePassword>(_onChangePassword);
    on<_RegisterByLoginAndPassword>(_onRegisterByLoginAndPassword);
  }

  FutureOr<void> _onChangeEmail(_ChangeEmail event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: Email(event.emailStr), failureOrSuccessOption: none()));
  }

  FutureOr<void> _onChangePassword(_ChangePassword event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: Password(event.passwordStr), failureOrSuccessOption: none()));
  }

  FutureOr<void> _onRegisterByLoginAndPassword(_, Emitter<RegisterState> emit) async {
    emit(state.copyWith(validateForm: true));
    final emailIsValide = state.email.isValid();
    final passwordIsValide = state.password.isValid();

    emit(state.copyWith(submitting: true));
    if (emailIsValide && passwordIsValide) {
      final response = await authFacade.registerWithEmailAndPassword(
        state.email.getOrCrash(),
        state.password.getOrCrash(),
      );

      emit(state.copyWith(
        failureOrSuccessOption: response.fold(
          (l) => some(left(l)),
          (r) => some(right(r)),
        ),
      ));
    }
    emit(state.copyWith(submitting: false));
  }
}
