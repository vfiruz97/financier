part of 'income_transaction_create_bloc.dart';

@freezed
class IncomeTransactionCreateEvent with _$IncomeTransactionCreateEvent {
  const factory IncomeTransactionCreateEvent.assignAccount(Account account) = _AssignAccount;
  const factory IncomeTransactionCreateEvent.assignCategoryId(String categoryId) = _AssignCategoryId;
  const factory IncomeTransactionCreateEvent.fixBalance(double balance) = _FixBalance;
  const factory IncomeTransactionCreateEvent.save() = _Save;
}
