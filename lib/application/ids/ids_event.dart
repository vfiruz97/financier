part of 'ids_bloc.dart';

@freezed
class IdsEvent with _$IdsEvent {
  const factory IdsEvent.started(String userId) = _Started;
  const factory IdsEvent.refreshActiveBudgetId() = _RefreshActiveBudgetId;
  const factory IdsEvent.refreshAccountIds() = _RefreshAccountIds;
}
