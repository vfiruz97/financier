import '../../../application/ids/ids_bloc.dart';
import '../../../application/plan/plan_create/plan_create_bloc.dart';
import '../../../domain/core/currency_list.dart';
import '../../../domain/financier/account/account.dart';
import '../../../infrastructure/database/daos/account_dao.dart';
import '../../../injection.dart';
import '../../home/accounts/account_empty_screen.dart';
import '../../home/budgets/budget_active_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseCurrency extends StatelessWidget {
  const ChooseCurrency({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final plan = context.watch<PlanCreateBloc>().state.plan;
    final budgetId = context.watch<IdsBloc>().state.activeBudgetId;

    return budgetId == null
        ? const BudgetActiveScreen(goBack: true)
        : StreamBuilder<List<Account>>(
            stream: getIt<AccountsDao>().watchAllByBudgetId(budgetId) as Stream<List<Account>>,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final accounts = snapshot.data;
                if (accounts != null && accounts.isNotEmpty) {
                  /// Important! Adding budget id.
                  BlocProvider.of<PlanCreateBloc>(context).add(PlanCreateEvent.addBudgetId(budgetId));

                  final currencyIds = Set<int>.from(accounts.map((e) => e.currencyId.getOrCrash()).toList());

                  /// Important! if there is no value will add default currency id.
                  if (plan.currencyId.getOrElse(4) == 4) {
                    BlocProvider.of<PlanCreateBloc>(context).add(PlanCreateEvent.changeCurrencyId(
                        currencyIds.firstWhere((id) => id == 4, orElse: () => currencyIds.first)));
                  }

                  return Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 60,
                        left: 0,
                        right: 0,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (final id in currencyIds)
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      /// Important! Adding default currency id.
                                      BlocProvider.of<PlanCreateBloc>(context)
                                          .add(PlanCreateEvent.changeCurrencyId(id));
                                    },
                                    child: ListCurrencyItem(
                                      code: '${currencies[id]['a_code']}',
                                      currency: '${currencies[id]['currency']}',
                                      country: '${currencies[id]['country']}',
                                      active: id == plan.currencyId.getOrElse(0),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Calculations will be made only in selected currency',
                                  style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondaryContainer),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 60,
                          color: Theme.of(context).primaryColor,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () => pageController.jumpToPage(0),
                                    child: SizedBox(
                                      height: 60,
                                      child: Center(
                                          child: Text('PREVIOUS',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(color: Theme.of(context).colorScheme.secondary))),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  decoration:
                                      const BoxDecoration(border: Border(left: BorderSide(color: Colors.white)))),
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () => pageController.jumpToPage(2),
                                    child: SizedBox(
                                      height: 60,
                                      child: Center(
                                          child: Text('NEXT',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(color: Theme.of(context).colorScheme.secondary))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }
                return const AccountEmptyScreen();
              }
              return const Center(child: CircularProgressIndicator());
            });
  }
}

class ListCurrencyItem extends StatelessWidget {
  const ListCurrencyItem(
      {super.key, required this.code, required this.currency, required this.country, this.active = false});

  final String code;
  final String currency;
  final String country;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        children: [
          if (active) ...[
            Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 20)
          ] else
            const SizedBox(width: 40),
          Text(code,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '$currency ',
                style:
                    DefaultTextStyle.of(context).style.copyWith(color: Theme.of(context).colorScheme.secondaryContainer),
                children: [
                  TextSpan(text: country, style: const TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
