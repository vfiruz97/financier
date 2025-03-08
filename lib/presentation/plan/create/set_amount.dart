import '../../../application/plan/plan_create/plan_create_bloc.dart';
import '../../transactions/expense/dialog/enter_balance_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetAmount extends StatelessWidget {
  const SetAmount({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final planController = context.watch<PlanCreateBloc>();
    final plan = planController.state.plan;

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
              children: [
                ListTransactionItem(
                    fieldName: 'Want to earn',
                    value: '${plan.currencyId.code} ${plan.incomeBalance.getOrElse(0)}',
                    icon: Icons.attach_money_outlined,
                    rightIcon: Icons.chevron_right_sharp,
                    onTap: () async {
                      await showModalBottomSheet(
                          context: context,
                          elevation: 8,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          builder: (BuildContext context) {
                            final balance = '${plan.incomeBalance.getOrElse(0)}';
                            return EnterBalanceDialogTwo(
                              initBalance: balance.endsWith('.0') ? balance.replaceAll('.0', '') : balance,
                              currencyCode: plan.currencyId.code,
                              onOk: (balance) {
                                planController.add(PlanCreateEvent.changeIncomeBalance(balance));
                              },
                            );
                          });
                    }),
                ListTransactionItem(
                    fieldName: 'Want to spend',
                    value: '${plan.currencyId.code} ${plan.expenseBalance.getOrElse(0)}',
                    icon: Icons.attach_money_outlined,
                    rightIcon: Icons.chevron_right_sharp,
                    onTap: () async {
                      await showModalBottomSheet(
                          context: context,
                          elevation: 8,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          builder: (BuildContext context) {
                            final balance = '${plan.expenseBalance.getOrElse(0)}';
                            return EnterBalanceDialogTwo(
                              initBalance: balance.endsWith('.0') ? balance.replaceAll('.0', '') : balance,
                              currencyCode: plan.currencyId.code,
                              onOk: (balance) {
                                planController.add(PlanCreateEvent.changeExpenseBalance(balance));
                              },
                            );
                          });
                    }),
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
                      onTap: () => pageController.jumpToPage(1),
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
                Container(decoration: const BoxDecoration(border: Border(left: BorderSide(color: Colors.white)))),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<PlanCreateBloc>(context).add(const PlanCreateEvent.save());
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 60,
                        child: Center(
                            child: Text('FINISH',
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
}

class ListTransactionItem extends StatelessWidget {
  const ListTransactionItem({
    super.key,
    required this.fieldName,
    required this.value,
    required this.icon,
    required this.rightIcon,
    required this.onTap,
  });

  final String fieldName;
  final String value;
  final IconData icon;
  final IconData rightIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(fieldName,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 12)),
                  const SizedBox(height: 4),
                  Text(value,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Theme.of(context).colorScheme.primary)),
                ],
              ),
            ),
            Icon(rightIcon, color: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }
}
