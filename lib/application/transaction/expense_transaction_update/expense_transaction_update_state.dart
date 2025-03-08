part of 'expense_transaction_update_bloc.dart';

@freezed
class ExpenseTransactionUpdateState with _$ExpenseTransactionUpdateState {
  const factory ExpenseTransactionUpdateState({
    required Transaction transaction,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccessOption,
  }) = _ExpenseTransactionUpdateState;

  factory ExpenseTransactionUpdateState.initial() =>
      ExpenseTransactionUpdateState(transaction: Transaction.empty(), failureOrSuccessOption: none());
}
