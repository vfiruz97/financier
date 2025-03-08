part of 'account_update_bloc.dart';

@freezed
class AccountUpdateEvent with _$AccountUpdateEvent {
  const factory AccountUpdateEvent.assignAccount(Account account) = _AssignAccount;
  const factory AccountUpdateEvent.chooseIconId(int iconId) = _ChooseIconId;
  const factory AccountUpdateEvent.changeAccountName(String nameStr) = _ChangeAccountName;
  const factory AccountUpdateEvent.toggleShowDeleted() = _ToggleShowDeleted;
  const factory AccountUpdateEvent.restore() = _Restore;
  const factory AccountUpdateEvent.save() = _Save;
  const factory AccountUpdateEvent.delete() = _Delete;
}
