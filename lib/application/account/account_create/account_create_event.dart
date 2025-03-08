part of 'account_create_bloc.dart';

@freezed
class AccountCreateEvent with _$AccountCreateEvent {
  const factory AccountCreateEvent.assignBudgetId(String budgetId) = _AssignBudgetId;
  const factory AccountCreateEvent.selectCurrency(int currencyId) = _SelectCurrency;
  const factory AccountCreateEvent.chooseIconId(int iconId) = _ChooseIconId;
  const factory AccountCreateEvent.changeAccountName(String nameStr) = _ChangeAccountName;
  const factory AccountCreateEvent.changeBalance(double balance) = _ChangeBalance;
  const factory AccountCreateEvent.save() = _Save;
}
