part of 'plan_create_bloc.dart';

@freezed
class PlanCreateState with _$PlanCreateState {
  const factory PlanCreateState({
    required Plan plan,
  }) = _PlanCreateState;

  factory PlanCreateState.initialize() => PlanCreateState(plan: Plan.empty());
}
