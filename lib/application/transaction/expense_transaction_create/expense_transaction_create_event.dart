part of 'expense_transaction_create_bloc.dart';

@freezed
class ExpenseTransactionCreateEvent with _$ExpenseTransactionCreateEvent {
  const factory ExpenseTransactionCreateEvent.assignAccount(Account account) = _AssignAccount;
  const factory ExpenseTransactionCreateEvent.assignCategoryId(String categoryId) = _AssignCategoryId;
  const factory ExpenseTransactionCreateEvent.fixBalance(double balance) = _FixBalance;
  const factory ExpenseTransactionCreateEvent.save() = _Save;
}
