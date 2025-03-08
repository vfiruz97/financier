import '../../application/plan/plan_update/plan_update_bloc.dart';
import '../helpers/flushers.dart';
import '../transactions/expense/dialog/enter_balance_dialog.dart';
import '../widgets/components/back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanUpdateScreen extends StatelessWidget {
  const PlanUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final planController = context.watch<PlanUpdateBloc>();
    final plan = planController.state.plan;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: Stack(children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: BackAppBar(
                title: 'Update Plan',
                actions: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          planController.add(const PlanUpdateEvent.delete());
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.delete_forever_outlined,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
            left: 0,
            top: 60,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.blueGrey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTransactionItem(
                    fieldName: 'Start Date',
                    value: plan.startDateFormated,
                    icon: Icons.date_range,
                    rightIcon: Icons.mode_edit_outlined,
                    onTap: () async {
                      final DateTime? pickedStartDate = await showDatePicker(
                        context: context,
                        initialDate: plan.startDate,
                        firstDate: DateTime(2020, 1),
                        lastDate: DateTime.now().add(const Duration(days: 736)),
                      );
                      if (pickedStartDate != null) {
                        if (plan.endDate.compareTo(pickedStartDate) >= 0) {
                          planController.add(PlanUpdateEvent.changeStartDate(pickedStartDate));
                          planController.add(const PlanUpdateEvent.update());
                        } else {
                          FlushbarHelper.showValidationError(context,
                              message: 'The Start Date must not be greater than the End Date.');
                        }
                      }
                    },
                  ),
                  ListTransactionItem(
                    fieldName: 'End Date',
                    value: plan.enDateFormated,
                    icon: Icons.date_range,
                    rightIcon: Icons.mode_edit_outlined,
                    onTap: () async {
                      final DateTime? pickedEndDate = await showDatePicker(
                        context: context,
                        initialDate: plan.endDate,
                        firstDate: DateTime(2020, 1),
                        lastDate: DateTime.now().add(const Duration(days: 736)),
                      );
                      if (pickedEndDate != null) {
                        if (pickedEndDate.compareTo(plan.startDate) >= 0) {
                          planController.add(PlanUpdateEvent.changeEndDate(pickedEndDate));
                          planController.add(const PlanUpdateEvent.update());
                        } else {
                          const snackBar =
                              SnackBar(content: Text('The End Date must not be less than the Start Date.'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                    },
                  ),
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
                                planController.add(PlanUpdateEvent.changeIncomeBalance(balance));
                                planController.add(const PlanUpdateEvent.update());
                              },
                            );
                          });
                    },
                  ),
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
                                planController.add(PlanUpdateEvent.changeExpenseBalance(balance));
                                planController.add(const PlanUpdateEvent.update());
                              },
                            );
                          });
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ]),
      ),
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
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
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
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.w500,
                        fontSize: 12)),
                const SizedBox(height: 4),
                Text(value,
                    maxLines: 1,
                    style:
                        Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
              ],
            ),
          ),
          InkWell(onTap: onTap, child: Icon(rightIcon, color: Theme.of(context).primaryColor)),
        ],
      ),
    );
  }
}
