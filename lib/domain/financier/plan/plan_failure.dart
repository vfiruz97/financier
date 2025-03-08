import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_failure.freezed.dart';

@freezed
abstract class PlanFailure with _$PlanFailure {
  const factory PlanFailure.unexpected() = _UnexpectedPlanFailure;
}
