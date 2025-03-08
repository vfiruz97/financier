part of 'budget_create_bloc.dart';

@freezed
class BudgetCreateEvent with _$BudgetCreateEvent {
  const factory BudgetCreateEvent.changeName(String nameStr) = _ChangeName;
  const factory BudgetCreateEvent.toggleActivity() = _ToggleActivity;
  const factory BudgetCreateEvent.assignUserId(String userIdStr) = _AssignUserId;
  const factory BudgetCreateEvent.save() = _Save;
}
