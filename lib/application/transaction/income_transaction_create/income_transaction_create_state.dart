part of 'income_transaction_create_bloc.dart';

@freezed
class IncomeTransactionCreateState with _$IncomeTransactionCreateState {
  const factory IncomeTransactionCreateState({
    required Transaction transaction,
    required Account account,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccessOption,
  }) = _IncomeTransactionCreateState;

  factory IncomeTransactionCreateState.initial() => IncomeTransactionCreateState(
        transaction: Transaction.empty().copyWith(type: TransactionType.income),
        account: Account.empty(),
        failureOrSuccessOption: none(),
      );
}
