part of 'expense_transaction_update_bloc.dart';

@freezed
class ExpenseTransactionUpdateEvent with _$ExpenseTransactionUpdateEvent {
  const factory ExpenseTransactionUpdateEvent.changeCreatedAt(DateTime createdAt) = _ChangeCreatedAt;
  const factory ExpenseTransactionUpdateEvent.changeAmount(double amount) = _ChangeAmount;
  const factory ExpenseTransactionUpdateEvent.changeCategoryId(String categoryId) = _ChangeCategoryId;
  const factory ExpenseTransactionUpdateEvent.changeDescription(String descriptionStr) = _ChangeDescription;
  const factory ExpenseTransactionUpdateEvent.assignTransaction(Transaction transaction) = _AssignTransaction;
  const factory ExpenseTransactionUpdateEvent.update() = _Update;
  const factory ExpenseTransactionUpdateEvent.delete() = _Delete;
}
