part of 'budget_update_bloc.dart';

@freezed
class BudgetUpdateEvent with _$BudgetUpdateEvent {
  const factory BudgetUpdateEvent.changeName(String nameStr) = _ChangeName;
  const factory BudgetUpdateEvent.toggleActivity() = _ToggleActivity;
  const factory BudgetUpdateEvent.assignBudget(Budget budget) = _AssignBudget;
  const factory BudgetUpdateEvent.save() = _Save;
  const factory BudgetUpdateEvent.delete() = _Delete;
}
