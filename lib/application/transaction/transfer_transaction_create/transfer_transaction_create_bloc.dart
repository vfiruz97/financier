import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/account/account.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../domain/financier/transaction/transaction_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transfer_transaction_create_event.dart';
part 'transfer_transaction_create_state.dart';
part 'transfer_transaction_create_bloc.freezed.dart';

@injectable
class TransferTransactionCreateBloc extends Bloc<TransferTransactionCreateEvent, TransferTransactionCreateState> {
  final ITransactionFacade transactionFacade;
  TransferTransactionCreateBloc(this.transactionFacade) : super(TransferTransactionCreateState.initial()) {
    on<_AssignAccountFrom>(_onAssignAccountFrom);
    on<_AssignAccountTo>(_onAssignAccountTo);
    on<_FixAmount>(_onFixAmount);
    on<_ExchangeAmount>(_onExchangeAmount);
    on<_Save>(_onSave);
  }

  FutureOr<void> _onAssignAccountFrom(_AssignAccountFrom event, Emitter<TransferTransactionCreateState> emit) {
    emit(state.copyWith(
      expenseTransaction: state.expenseTransaction.copyWith(accountId: event.account.id.getOrCrash()),
      accountFrom: event.account,
    ));
  }

  FutureOr<void> _onAssignAccountTo(_AssignAccountTo event, Emitter<TransferTransactionCreateState> emit) {
    emit(state.copyWith(
      incomeTransaction: state.incomeTransaction.copyWith(accountId: event.account.id.getOrCrash()),
      accountTo: event.account,
    ));
  }

  FutureOr<void> _onFixAmount(_FixAmount event, Emitter<TransferTransactionCreateState> emit) {
    emit(state.copyWith(
      amount: event.amount,
      expenseTransaction: state.expenseTransaction.copyWith(balance: Balance(event.amount)),
      exchangedAmount: event.amount,
      incomeTransaction: state.incomeTransaction.copyWith(balance: Balance(event.amount)),
    ));
  }

  FutureOr<void> _onExchangeAmount(_ExchangeAmount event, Emitter<TransferTransactionCreateState> emit) {
    emit(state.copyWith(
      exchangedAmount: event.amount,
      incomeTransaction: state.incomeTransaction.copyWith(balance: Balance(event.amount)),
    ));
  }

  FutureOr<void> _onSave(_Save event, Emitter<TransferTransactionCreateState> emit) async {
    await transactionFacade.create(state.incomeTransaction);
    await transactionFacade.create(state.expenseTransaction);
  }
}
