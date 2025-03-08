part of 'plan_update_bloc.dart';

@freezed
class PlanUpdateState with _$PlanUpdateState {
  const factory PlanUpdateState({
    required Plan plan,
  }) = _PlanUpdateState;

  factory PlanUpdateState.initial() => PlanUpdateState(plan: Plan.empty());
}
