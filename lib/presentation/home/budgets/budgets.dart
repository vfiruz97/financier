import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/budget/budget_update/budget_update_bloc.dart';
import '../../../domain/financier/budget/budget.dart';
import '../../../infrastructure/database/daos/budget_dao.dart';
import '../../../injection.dart';
import '../../widgets/components/buttons/primary_button.dart';
import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'budget_empty_screen.dart';

class BudgetTitle extends StatelessWidget {
  const BudgetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Budgets');
  }
}

class BudgetBody extends StatelessWidget {
  const BudgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = BlocProvider.of<AuthBloc>(context).state.userId;

    return StreamBuilder<List<BudgetWithRelationship>>(
        stream: getIt<BudgetsDao>().watchAll(userId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final budgets = snapshot.data;
            if (budgets != null && budgets.isNotEmpty) {
              return Container(
                margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: WhiteCardWidget(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final budget in budgets)
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    BlocProvider.of<BudgetUpdateBloc>(context)
                                        .add(BudgetUpdateEvent.assignBudget(budget.budget));
                                    Navigator.pushNamed(context, '/budget-update');
                                  },
                                  child: ListBudgetItem(
                                    name: budget.budget.name.getOrCrash(),
                                    active: budget.budget.active,
                                    bottomBorder: !(budgets.last == budget),
                                  ),
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
                          title: 'ADD BUDGET',
                          onTap: () => Navigator.pushNamed(context, '/budget-create'),
                        )),
                  ],
                ),
              );
            }
            return const BudgetEmptyScreen();
          }
          return const Padding(padding: EdgeInsets.all(8.0), child: Center(child: CircularProgressIndicator()));
        });
  }
}

class ListBudgetItem extends StatelessWidget {
  const ListBudgetItem({super.key, required this.name, this.bottomBorder = true, this.active = false});
  final String name;
  final bool active;
  final bool bottomBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          Expanded(child: Text(name, style: Theme.of(context).textTheme.titleSmall, overflow: TextOverflow.ellipsis)),
          if (active) Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }
}
