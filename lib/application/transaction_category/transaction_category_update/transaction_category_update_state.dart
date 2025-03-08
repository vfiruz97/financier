part of 'transaction_category_update_bloc.dart';

@freezed
class TransactionCategoryUpdateState with _$TransactionCategoryUpdateState {
  const factory TransactionCategoryUpdateState({
    required TransactionCategory transactionCategory,
    required bool deleteCategory,
    required bool submitting,
    required bool validateForm,
    required Option<Either<TransactionCategoryFailure, Unit>> failureOrSuccessOption,
  }) = _TransactionCategoryUpdateState;

  factory TransactionCategoryUpdateState.initial() => TransactionCategoryUpdateState(
      transactionCategory: TransactionCategory.empty(),
      deleteCategory: false,
      submitting: false,
      validateForm: false,
      failureOrSuccessOption: none());
}
