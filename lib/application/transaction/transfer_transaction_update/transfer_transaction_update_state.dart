part of 'transfer_transaction_update_bloc.dart';

@freezed
class TransferTransactionUpdateState with _$TransferTransactionUpdateState {
  const factory TransferTransactionUpdateState({
    required Transaction transaction,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccessOption,
  }) = _TransferTransactionUpdateState;

  factory TransferTransactionUpdateState.initial() =>
      TransferTransactionUpdateState(transaction: Transaction.empty(), failureOrSuccessOption: none());
}
