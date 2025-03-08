part of 'income_transaction_update_bloc.dart';

@freezed
class IncomeTransactionUpdateState with _$IncomeTransactionUpdateState {
  const factory IncomeTransactionUpdateState({
    required Transaction transaction,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccessOption,
  }) = _IncomeTransactionUpdateState;

  factory IncomeTransactionUpdateState.initial() =>
      IncomeTransactionUpdateState(transaction: Transaction.empty(), failureOrSuccessOption: none());
}
