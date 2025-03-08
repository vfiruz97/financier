import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../domain/financier/transaction/transaction_facade.dart';
import '../../../domain/financier/transaction/transaction_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'income_transaction_update_event.dart';
part 'income_transaction_update_state.dart';
part 'income_transaction_update_bloc.freezed.dart';

@injectable
class IncomeTransactionUpdateBloc extends Bloc<IncomeTransactionUpdateEvent, IncomeTransactionUpdateState> {
  final ITransactionFacade transactionFacade;
  IncomeTransactionUpdateBloc(this.transactionFacade) : super(IncomeTransactionUpdateState.initial()) {
    on<_ChangeCreatedAt>(_onChangeCreatedAt);
    on<_ChangeAmount>(_onChangeAmount);
    on<_ChangeCategoryId>(_onChangeCategoryId);
    on<_ChangeDescription>(_onChangeDescription);
    on<_AssignTransaction>(_onAssignTransaction);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  FutureOr<void> _onChangeCreatedAt(_ChangeCreatedAt event, Emitter<IncomeTransactionUpdateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(createdAt: event.createdAt),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeAmount(_ChangeAmount event, Emitter<IncomeTransactionUpdateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(balance: Balance(event.amount)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeCategoryId(_ChangeCategoryId event, Emitter<IncomeTransactionUpdateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(categoryId: event.categoryId),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onChangeDescription(_ChangeDescription event, Emitter<IncomeTransactionUpdateState> emit) {
    emit(state.copyWith(
      transaction: state.transaction.copyWith(description: Description(event.descriptionStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onAssignTransaction(_AssignTransaction event, Emitter<IncomeTransactionUpdateState> emit) {
    emit(state.copyWith(
      transaction: event.transaction,
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onUpdate(_Update event, Emitter<IncomeTransactionUpdateState> emit) async {
    final description = state.transaction.description;
    final isDescriptionValid = description == null || description.isValid();

    if (isDescriptionValid) {
      final response = await transactionFacade.update(state.transaction);
      emit(state.copyWith(failureOrSuccessOption: some(response)));
    }
  }

  FutureOr<void> _onDelete(_Delete event, Emitter<IncomeTransactionUpdateState> emit) async {
    await transactionFacade.delete(state.transaction);
    emit(state.copyWith(failureOrSuccessOption: some(right(unit))));
  }
}
