import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../domain/financier/transaction_category/transaction_category_facade.dart';
import '../../../domain/financier/transaction_category/transaction_category_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_category_create_event.dart';
part 'transaction_category_create_state.dart';
part 'transaction_category_create_bloc.freezed.dart';

@injectable
class TransactionCategoryCreateBloc extends Bloc<TransactionCategoryCreateEvent, TransactionCategoryCreateState> {
  final ITransactionCategoryFacade transactionCategoryFacade;
  TransactionCategoryCreateBloc(this.transactionCategoryFacade) : super(TransactionCategoryCreateState.initial()) {
    on<_ChangeName>(_onChangeName);
    on<_ChangeType>(_onChangeType);
    on<_Submit>(_onSubmit);
  }

  FutureOr<void> _onChangeName(_ChangeName event, Emitter<TransactionCategoryCreateState> emit) {
    emit(state.copyWith(
      transactionCategory: state.transactionCategory.copyWith(name: Name(event.nameStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSubmit(_Submit event, Emitter<TransactionCategoryCreateState> emit) async {
    emit(state.copyWith(validateForm: true));
    final nameIsValid = state.transactionCategory.name.isValid();
    emit(state.copyWith(submitting: true));

    if (nameIsValid) {
      final response = await transactionCategoryFacade.create(state.transactionCategory);
      emit(state.copyWith(
        failureOrSuccessOption: some(response.fold(
          (f) => left(f),
          (r) => right(r),
        )),
      ));
    }
    emit(state.copyWith(submitting: false));
  }

  FutureOr<void> _onChangeType(_ChangeType event, Emitter<TransactionCategoryCreateState> emit) {
    emit(state.copyWith(
      transactionCategory: state.transactionCategory.copyWith(type: event.transactionCategoryType),
      failureOrSuccessOption: none(),
    ));
  }
}
