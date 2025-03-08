import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/account/account.dart';
import '../../../domain/financier/account/account_facade.dart';
import '../../../domain/financier/account/account_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_create_event.dart';
part 'account_create_state.dart';
part 'account_create_bloc.freezed.dart';

@injectable
class AccountCreateBloc extends Bloc<AccountCreateEvent, AccountCreateState> {
  final IAccountFacade accountFacade;
  AccountCreateBloc(this.accountFacade) : super(AccountCreateState.initial()) {
    on<_AssignBudgetId>(_onAssignBudgetId);
    on<_SelectCurrency>(_onSelectCurrency);
    on<_ChooseIconId>(_onChooseIconId);
    on<_ChangeAccountName>(_onChangeAccountName);
    on<_ChangeBalance>(_onChangeBalance);
    on<_Save>(_onSave);
  }

  FutureOr<void> _onAssignBudgetId(_AssignBudgetId event, Emitter<AccountCreateState> emit) {
    emit(state.copyWith(
      account: state.account.copyWith(budgetId: event.budgetId),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSelectCurrency(_SelectCurrency event, Emitter<AccountCreateState> emit) {
    emit(state.copyWith(
      account: state.account.copyWith(currencyId: CurrencyId(event.currencyId)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChooseIconId(_ChooseIconId event, Emitter<AccountCreateState> emit) {
    emit(state.copyWith(
      account: state.account.copyWith(iconAvatar: IconAvatar(event.iconId)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeAccountName(_ChangeAccountName event, Emitter<AccountCreateState> emit) {
    emit(state.copyWith(
      account: state.account.copyWith(name: Name(event.nameStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeBalance(_ChangeBalance event, Emitter<AccountCreateState> emit) {
    emit(state.copyWith(
      account: state.account.copyWith(balance: Balance(event.balance)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSave(_Save event, Emitter<AccountCreateState> emit) async {
    emit(state.copyWith(validateForm: true));

    final isNameValid = state.account.name.isValid();
    final isBalanceValid = state.account.balance.isValid();

    if (isNameValid && isBalanceValid) {
      final response = await accountFacade.create(state.account);
      emit(state.copyWith(failureOrSuccessOption: some(response)));
    }
  }
}
