part of 'transaction_category_create_bloc.dart';

@freezed
class TransactionCategoryCreateState with _$TransactionCategoryCreateState {
  const factory TransactionCategoryCreateState({
    required TransactionCategory transactionCategory,
    required bool submitting,
    required bool validateForm,
    required Option<Either<TransactionCategoryFailure, Unit>> failureOrSuccessOption,
  }) = _TransactionCategoryCreateState;

  factory TransactionCategoryCreateState.initial() => TransactionCategoryCreateState(
      transactionCategory: TransactionCategory.empty(),
      submitting: false,
      validateForm: false,
      failureOrSuccessOption: none());
}
