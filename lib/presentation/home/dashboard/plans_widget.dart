import '../../../application/ids/ids_bloc.dart';
import '../../../application/plan/plan_update/plan_update_bloc.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/plan/plan.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../infrastructure/database/daos/plan_dao.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
import '../../../injection.dart';
import '../../view_model/plan_dashboard.dart';
import '../../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlansWidget extends StatelessWidget {
  const PlansWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final budgetId = context.watch<IdsBloc>().state.activeBudgetId;
    if (budgetId == null) {
      return const SizedBox();
    }

    return StreamBuilder<List<PlanWithRelationship>>(
      stream: getIt<PlansDao>().watchAll(budgetId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final planWRs = snapshot.data;
          if (planWRs != null && planWRs.isNotEmpty) {
            return Column(
              children: [
                for (final _planWr in planWRs)
                  FutureBuilder<PlanDashboard>(
                    future: _computeBlanaces(_planWr, budgetId),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final planDashboard = snapshot.data;
                        if (planDashboard != null) {
                          return _PlanItem(planDashboard: planDashboard);
                        }
                      }
                      return const SizedBox();
                    },
                  ),
                const SizedBox(height: 10),
              ],
            );
          }
        }
        return const SizedBox();
      },
    );
  }

  Future<PlanDashboard> _computeBlanaces(PlanWithRelationship planWithRelationship, String budgetId) async {
    double earned = 0;
    double spent = 0;

    final transactions = await getIt<TransactionsDao>().getAllWhereCreatedBetween(
      startDate: planWithRelationship.plan.startDate,
      endDate: planWithRelationship.plan.endDate,
    );

    transactions.map((TransactionWithRelationship tRW) {
      final account = tRW.account;
      if (account != null &&
          account.budgetId == budgetId &&
          account.currencyId.getOrElse(0) == planWithRelationship.plan.currencyId.getOrElse(0)) {
        final transaction = tRW.transaction;
        if (transaction.type == TransactionType.income || transaction.type == TransactionType.transferTo) {
          earned += transaction.balance.getOrElse(0);
        } else if (transaction.type == TransactionType.expense || transaction.type == TransactionType.transferFrom) {
          spent += transaction.balance.getOrElse(0);
        }
      }
      return null;
    });

    return PlanDashboard(
      earned: Balance(earned),
      spent: Balance(spent),
      planWithRelationship: planWithRelationship,
    );
  }
}

class _PlanItem extends StatelessWidget {
  const _PlanItem({required this.planDashboard});

  final PlanDashboard planDashboard;

  @override
  Widget build(BuildContext context) {
    final plan = planDashboard.planWithRelationship.plan;
    return Column(
      children: [
        WhiteCardWidget(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${plan.startDateFormated}  -  ${plan.enDateFormated}',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).colorScheme.primaryContainer),
                        overflow: TextOverflow.ellipsis),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<PlanUpdateBloc>(context).add(PlanUpdateEvent.addPlan(plan));
                        Navigator.pushNamed(context, '/plan-update');
                      },
                      child: Icon(Icons.edit, size: 20, color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'EARNED: ${plan.currencyId.code} ${planDashboard.earnedBalance}',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      'GOAL: ${plan.currencyId.code} ${plan.earnedBalance}',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                _ProgressDiagram(
                    activeColor: Theme.of(context).colorScheme.primary,
                    processPercentage: planDashboard.earned.getOrElse(1) /
                        planDashboard.planWithRelationship.plan.incomeBalance.getOrElse(1)),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SPENT: ${plan.currencyId.code} ${planDashboard.spentBalance}',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      'GOAL: ${plan.currencyId.code} ${plan.spentBalance}',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                ),
                _ProgressDiagram(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  processPercentage: planDashboard.spent.getOrElse(1) /
                      planDashboard.planWithRelationship.plan.expenseBalance.getOrElse(1),
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ProgressDiagram extends StatelessWidget {
  const _ProgressDiagram({required this.activeColor, required this.processPercentage});

  final Color activeColor;
  final double processPercentage;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      double widthOfProgress = constraints.maxWidth;
      if (processPercentage < 1) {
        widthOfProgress = widthOfProgress * processPercentage;
      }

      return SizedBox(
        height: 6,
        child: Stack(
          children: [
            Positioned.fill(child: Container(color: Colors.grey.shade300)),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              width: widthOfProgress,
              child: Container(color: activeColor),
            ),
          ],
        ),
      );
    });
  }
}
