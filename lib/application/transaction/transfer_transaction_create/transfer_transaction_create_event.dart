part of 'transfer_transaction_create_bloc.dart';

@freezed
class TransferTransactionCreateEvent with _$TransferTransactionCreateEvent {
  const factory TransferTransactionCreateEvent.assignAccountFrom(Account account) = _AssignAccountFrom;
  const factory TransferTransactionCreateEvent.assignAccountTo(Account account) = _AssignAccountTo;
  const factory TransferTransactionCreateEvent.fixAmount(double amount) = _FixAmount;
  const factory TransferTransactionCreateEvent.exchangeAmount(double amount) = _ExchangeAmount;
  const factory TransferTransactionCreateEvent.save() = _Save;
}
