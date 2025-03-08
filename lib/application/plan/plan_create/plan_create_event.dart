part of 'plan_create_bloc.dart';

@freezed
class PlanCreateEvent with _$PlanCreateEvent {
  const factory PlanCreateEvent.addBudgetId(String budgetId) = _AddBudgetId;
  const factory PlanCreateEvent.changeStartDate(DateTime startDate) = _ChangeStartDate;
  const factory PlanCreateEvent.changeEndDate(DateTime endDate) = _ChangeEndDate;
  const factory PlanCreateEvent.changeCurrencyId(int currencyId) = _ChangeCurrencyId;
  const factory PlanCreateEvent.changeIncomeBalance(double balance) = _ChangeIncomeBalance;
  const factory PlanCreateEvent.changeExpenseBalance(double balance) = _ChangeExpenseBalance;
  const factory PlanCreateEvent.save() = _Save;
}
