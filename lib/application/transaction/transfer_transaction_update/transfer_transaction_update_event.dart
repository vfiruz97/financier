part of 'transfer_transaction_update_bloc.dart';

@freezed
class TransferTransactionUpdateEvent with _$TransferTransactionUpdateEvent {
  const factory TransferTransactionUpdateEvent.changeCreatedAt(DateTime createdAt) = _ChangeCreatedAt;
  const factory TransferTransactionUpdateEvent.changeAmount(double amount) = _ChangeAmount;
  const factory TransferTransactionUpdateEvent.changeDescription(String descriptionStr) = _ChangeDescription;
  const factory TransferTransactionUpdateEvent.assignTransaction(Transaction transaction) = _AssignTransaction;
  const factory TransferTransactionUpdateEvent.update() = _Update;
  const factory TransferTransactionUpdateEvent.delete() = _Delete;
}