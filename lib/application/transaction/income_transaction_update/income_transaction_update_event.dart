part of 'income_transaction_update_bloc.dart';

@freezed
class IncomeTransactionUpdateEvent with _$IncomeTransactionUpdateEvent {
  const factory IncomeTransactionUpdateEvent.changeCreatedAt(DateTime createdAt) = _ChangeCreatedAt;
  const factory IncomeTransactionUpdateEvent.changeAmount(double amount) = _ChangeAmount;
  const factory IncomeTransactionUpdateEvent.changeCategoryId(String categoryId) = _ChangeCategoryId;
  const factory IncomeTransactionUpdateEvent.changeDescription(String descriptionStr) = _ChangeDescription;
  const factory IncomeTransactionUpdateEvent.assignTransaction(Transaction transaction) = _AssignTransaction;
  const factory IncomeTransactionUpdateEvent.update() = _Update;
  const factory IncomeTransactionUpdateEvent.delete() = _Delete;
}