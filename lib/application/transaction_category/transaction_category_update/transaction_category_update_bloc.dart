import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../domain/financier/transaction_category/transaction_category_facade.dart';
import '../../../domain/financier/transaction_category/transaction_category_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_category_update_event.dart';
part 'transaction_category_update_state.dart';
part 'transaction_category_update_bloc.freezed.dart';

@injectable
class TransactionCategoryUpdateBloc extends Bloc<TransactionCategoryUpdateEvent, TransactionCategoryUpdateState> {
  final ITransactionCategoryFacade transactionCategoryFacade;
  TransactionCategoryUpdateBloc(this.transactionCategoryFacade) : super(TransactionCategoryUpdateState.initial()) {
    on<_Initial>(_onInitial);
    on<_ChangeName>(_onChangeName);
    on<_ToogleDeleteTransaction>(_onToogleDeleteTransaction);
    on<_AssignTransactionCategory>(_onAssignTransactionCategory);
    on<_UpdateOrder>(_onUpdateOrder);
    on<_UpdateOrDelete>(_onUpdateOrDelete);
  }

  FutureOr<void> _onInitial(_Initial event, Emitter<TransactionCategoryUpdateState> emit) {
    emit(TransactionCategoryUpdateState.initial());
  }

  FutureOr<void> _onChangeName(_ChangeName event, Emitter<TransactionCategoryUpdateState> emit) {
    emit(
      state.copyWith(
        transactionCategory: state.transactionCategory.copyWith(name: Name(event.nameStr)),
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onToogleDeleteTransaction(_, Emitter<TransactionCategoryUpdateState> emit) {
    emit(state.copyWith(deleteCategory: !state.deleteCategory, failureOrSuccessOption: none()));
  }

  FutureOr<void> _onAssignTransactionCategory(
      _AssignTransactionCategory event, Emitter<TransactionCategoryUpdateState> emit) {
    emit(
      state.copyWith(
        transactionCategory: event.transactionCategory,
        failureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onUpdateOrDelete(_UpdateOrDelete event, Emitter<TransactionCategoryUpdateState> emit) async {
    emit(state.copyWith(validateForm: true));
    final nameIsValid = state.transactionCategory.name.isValid();
    if (nameIsValid) {
      emit(state.copyWith(submitting: true));
      if (state.deleteCategory) {
        await transactionCategoryFacade.softDelete(state.transactionCategory);
        emit(state.copyWith(failureOrSuccessOption: some(right(unit))));
      } else {
        final response = await transactionCategoryFacade.update(state.transactionCategory);
        emit(state.copyWith(failureOrSuccessOption: some(response)));
      }
      emit(state.copyWith(submitting: false));
    }
  }

  FutureOr<void> _onUpdateOrder(_UpdateOrder event, Emitter<TransactionCategoryUpdateState> emit) async {
    final response =
        await transactionCategoryFacade.updateOrder(event.transactionCategories, event.transactionCategory, event.up);
    emit(state.copyWith(failureOrSuccessOption: some(response)));
  }
}
