import '../../core/value_objects.dart';
import '../budget/budget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'plan.freezed.dart';

@freezed
abstract class Plan with _$Plan {
  const Plan._();
  const factory Plan({
    required UniqueId id,
    required Balance incomeBalance,
    required Balance expenseBalance,
    required String budgetId,
    required CurrencyId currencyId,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Plan;

  factory Plan.empty() => Plan(
        id: UniqueId(),
        incomeBalance: Balance(1000),
        expenseBalance: Balance(500),
        budgetId: '',
        currencyId: CurrencyId(4),
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 30)),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  String get startDateFormated => DateFormat('dd MMM, yy').format(startDate);
  String get enDateFormated => DateFormat('dd MMM, yy').format(endDate);

  bool get isActive => DateTime.now().compareTo(endDate) <= 0;

  int get durationInDays => endDate.difference(startDate).inDays;
  int get daysLeft => DateTime.now().compareTo(endDate) < 0 ? endDate.difference(DateTime.now()).inDays : 0;

  String get earnedBalance => '${incomeBalance.getOrElse(0)}'.endsWith('.0')
      ? '${incomeBalance.getOrElse(0)}'.replaceFirst('.0', '')
      : '${incomeBalance.getOrElse(0)}';

  String get spentBalance => '${expenseBalance.getOrElse(0)}'.endsWith('.0')
      ? '${expenseBalance.getOrElse(0)}'.replaceFirst('.0', '')
      : '${expenseBalance.getOrElse(0)}';
}

@freezed
abstract class PlanWithRelationship with _$PlanWithRelationship {
  const factory PlanWithRelationship({
    required Plan plan,
    required Budget? budget,
  }) = _PlanWithRelationship;
}
