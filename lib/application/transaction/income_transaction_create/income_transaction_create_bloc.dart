import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/account/account.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../domain/financier/transaction/transaction_facade.dart';
import '../../../domain/financier/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'income_transaction_create_event.dart';
part 'income_transaction_create_state.dart';
part 'income_transaction_create_bloc.freezed.dart';

@injectable
class IncomeTransactionCreateBloc extends Bloc<IncomeTransactionCreateEvent, IncomeTransactionCreateState> {
  final ITransactionFacade transactionFacade;
  IncomeTransactionCreateBloc(this.transactionFacade) : super(IncomeTransactionCreateState.initial()) {
    on<_AssignAccount>(_onAssignAccount);
    on<_AssignCategoryId>(_onAssignCategoryId);
    on<_FixBalance>(_onFixBalance);
    on<_Save>(_onSave);
  }

  FutureOr<void> _onAssignAccount(_AssignAccount event, Emitter<IncomeTransactionCreateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(accountId: event.account.id.getOrCrash()),
      account: event.account,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onAssignCategoryId(_AssignCategoryId event, Emitter<IncomeTransactionCreateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(categoryId: event.categoryId),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onFixBalance(_FixBalance event, Emitter<IncomeTransactionCreateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(balance: Balance(event.balance)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSave(_Save event, Emitter<IncomeTransactionCreateState> emit) async {
    final response = await transactionFacade.create(state.transaction);
    emit(state.copyWith(failureOrSuccessOption: some(response)));
  }
}
