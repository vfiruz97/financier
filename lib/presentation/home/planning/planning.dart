import '../../../application/ids/ids_bloc.dart';
import '../../../application/plan/plan_update/plan_update_bloc.dart';
import '../../../domain/financier/plan/plan.dart';
import '../../../infrastructure/database/daos/plan_dao.dart';
import '../../../injection.dart';
import '../budgets/budget_active_screen.dart';
import 'plannning_empty_screen.dart';
import '../../widgets/components/buttons/primary_button.dart';
import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanningTitle extends StatelessWidget {
  const PlanningTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Planning');
  }
}

class PlanningBody extends StatelessWidget {
  const PlanningBody({super.key});

  @override
  Widget build(BuildContext context) {
    final budgetId = context.watch<IdsBloc>().state.activeBudgetId;
    if (budgetId == null) {
      return const BudgetActiveScreen();
    }

    return StreamBuilder<List<PlanWithRelationship>>(
        stream: getIt<PlansDao>().watchAll(budgetId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final planWRs = snapshot.data;
            if (planWRs != null && planWRs.isNotEmpty) {
              return Container(
                margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: WhiteCardWidget(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final _planWR in planWRs)
                              InkWell(
                                onTap: () {
                                  BlocProvider.of<PlanUpdateBloc>(context).add(PlanUpdateEvent.addPlan(_planWR.plan));
                                  Navigator.pushNamed(context, '/plan-update');
                                },
                                child: ListPlanItem(
                                  title: '${_planWR.plan.startDateFormated}  -  ${_planWR.plan.enDateFormated}',
                                  subtitle: '${_planWR.plan.durationInDays} days, ${_planWR.plan.daysLeft} days left',
                                  status: _planWR.plan.isActive,
                                  bottomBorder: !(_planWR == planWRs.last),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 15,
                        left: 0,
                        right: 0,
                        height: 45,
                        child: PrimaryButton(
                          title: 'NEW PLAN',
                          onTap: () {
                            Navigator.pushNamed(context, '/plan-create');
                          },
                        )),
                  ],
                ),
              );
            }
            return const PlanningEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

class ListPlanItem extends StatelessWidget {
  const ListPlanItem(
      {super.key, required this.title, required this.subtitle, required this.status, this.bottomBorder = true});

  final String title;
  final String subtitle;
  final bool status;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(15),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleSmall, overflow: TextOverflow.ellipsis),
                Text(subtitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          if (status)
            Text('Active',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                overflow: TextOverflow.ellipsis)
          else
            Text('Ended',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary),
                overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
