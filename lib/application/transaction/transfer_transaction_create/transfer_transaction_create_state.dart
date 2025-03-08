part of 'transfer_transaction_create_bloc.dart';

@freezed
class TransferTransactionCreateState with _$TransferTransactionCreateState {
  const factory TransferTransactionCreateState({
    required Account accountFrom,
    required double amount,
    required Account accountTo,
    required double exchangedAmount,
    required Transaction expenseTransaction,
    required Transaction incomeTransaction,
  }) = _TransferTransactionCreateState;

  factory TransferTransactionCreateState.initial() => TransferTransactionCreateState(
      accountFrom: Account.empty(),
      amount: 0,
      accountTo: Account.empty(),
      exchangedAmount: 0,
      expenseTransaction: Transaction.empty().copyWith(type: TransactionType.transferFrom),
      incomeTransaction: Transaction.empty().copyWith(type: TransactionType.transferTo));
}
