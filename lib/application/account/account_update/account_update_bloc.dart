import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/account/account.dart';
import '../../../domain/financier/account/account_facade.dart';
import '../../../domain/financier/account/account_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_update_event.dart';
part 'account_update_state.dart';
part 'account_update_bloc.freezed.dart';

@injectable
class AccountUpdateBloc extends Bloc<AccountUpdateEvent, AccountUpdateState> {
  final IAccountFacade accountFacade;
  AccountUpdateBloc(this.accountFacade) : super(AccountUpdateState.initial()) {
    on<_AssignAccount>(_onAssignAccount);
    on<_ChooseIconId>(_onChooseIconId);
    on<_ChangeAccountName>(_onChangeAccountName);
    on<_ToggleShowDeleted>(_onToggleShowDeleted);
    on<_Restore>(_onRestore);
    on<_Save>(_onSave);
    on<_Delete>(_onDelete);
  }

  FutureOr<void> _onAssignAccount(_AssignAccount event, Emitter<AccountUpdateState> emit) {
    emit(state.copyWith(
      account: event.account,
      accountBlack: event.account,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChooseIconId(_ChooseIconId event, Emitter<AccountUpdateState> emit) {
    emit(state.copyWith(
      accountBlack: state.accountBlack.copyWith(iconAvatar: IconAvatar(event.iconId)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeAccountName(_ChangeAccountName event, Emitter<AccountUpdateState> emit) {
    emit(state.copyWith(
      accountBlack: state.accountBlack.copyWith(name: Name(event.nameStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onToggleShowDeleted(_ToggleShowDeleted event, Emitter<AccountUpdateState> emit) {
    emit(state.copyWith(showDeleted: !state.showDeleted, failureOrSuccessOption: none()));
  }

  FutureOr<void> _onRestore(event, Emitter<AccountUpdateState> emit) async {
    await accountFacade.restoreAccount(state.account);
    emit(state.copyWith(
      account: state.account.copyWith(deletedAt: null),
      failureOrSuccessOption: some(right(unit)),
    ));
  }

  FutureOr<void> _onSave(_Save event, Emitter<AccountUpdateState> emit) async {
    final isNameValid = state.accountBlack.name.isValid();
    if (isNameValid) {
      final response = await accountFacade.update(state.accountBlack);
      emit(state.copyWith(failureOrSuccessOption: some(response)));
      if (response.isRight()) {
        emit(state.copyWith(account: state.accountBlack));
      }
    }
  }

  FutureOr<void> _onDelete(_Delete event, Emitter<AccountUpdateState> emit) async {
    await accountFacade.softDelete(state.account);
    emit(state.copyWith(failureOrSuccessOption: some(right(unit))));
  }
}
