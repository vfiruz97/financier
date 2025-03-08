part of 'expense_transaction_create_bloc.dart';

@freezed
class ExpenseTransactionCreateState with _$ExpenseTransactionCreateState {
  const factory ExpenseTransactionCreateState({
    required Transaction transaction,
    required Account account,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccessOption,
  }) = _ExpenseTransactionCreateState;

  factory ExpenseTransactionCreateState.initial() => ExpenseTransactionCreateState(
        transaction: Transaction.empty().copyWith(type: TransactionType.expense),
        account: Account.empty(),
        failureOrSuccessOption: none(),
      );
}
