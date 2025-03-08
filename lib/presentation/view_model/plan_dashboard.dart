import '../../domain/core/value_objects.dart';
import '../../domain/financier/plan/plan.dart';

/// Class [PlanDashboard] has [earned] and [spent]
/// parametrs which contain info about competion of plan.
///
/// Class [PlanDashboard] uses in Dashboard page.
class PlanDashboard {
  final PlanWithRelationship planWithRelationship;
  final Balance earned;
  final Balance spent;

  PlanDashboard({
    required this.planWithRelationship,
    required this.earned,
    required this.spent,
  });

  String get earnedBalance => '${earned.getOrElse(0)}'.endsWith('.0')
      ? '${earned.getOrElse(0)}'.replaceFirst('.0', '')
      : '${earned.getOrElse(0)}';

  String get spentBalance =>
      '${spent.getOrElse(0)}'.endsWith('.0') ? '${spent.getOrElse(0)}'.replaceFirst('.0', '') : '${spent.getOrElse(0)}';
}
