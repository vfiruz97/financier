part of 'plan_update_bloc.dart';

@freezed
class PlanUpdateEvent with _$PlanUpdateEvent {
  const factory PlanUpdateEvent.addPlan(Plan plan) = _AddPlan;
  const factory PlanUpdateEvent.changeStartDate(DateTime startDate) = _ChangeStartDate;
  const factory PlanUpdateEvent.changeEndDate(DateTime endDate) = _ChangeEndDate;
  const factory PlanUpdateEvent.changeIncomeBalance(double balance) = _ChangeIncomeBalance;
  const factory PlanUpdateEvent.changeExpenseBalance(double balance) = _ChangeExpenseBalance;
  const factory PlanUpdateEvent.update() = _Update;
  const factory PlanUpdateEvent.delete() = _Delete;
}
