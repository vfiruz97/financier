import '../../../application/plan/plan_create/plan_create_bloc.dart';
import '../../helpers/flushers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseArrangeDate extends StatelessWidget {
  const ChooseArrangeDate({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final plan = context.watch<PlanCreateBloc>().state.plan;

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
                        BlocProvider.of<PlanCreateBloc>(context).add(PlanCreateEvent.changeStartDate(pickedStartDate));
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
                        BlocProvider.of<PlanCreateBloc>(context).add(PlanCreateEvent.changeEndDate(pickedEndDate));
                      } else {
                        FlushbarHelper.showValidationError(context,
                            message: 'The End Date must not be less than the Start Date.');
                      }
                    }
                  },
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
                  child: InkWell(
                    onTap: null,
                    child: SizedBox(
                      height: 60,
                      child: Center(child: Text('', style: Theme.of(context).textTheme.titleSmall)),
                    ),
                  ),
                ),
                Container(decoration: const BoxDecoration(border: Border(left: BorderSide(color: Colors.white)))),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => pageController.jumpToPage(1),
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
                          color: Theme.of(context).colorScheme.primaryContainer,
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
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
            Icon(rightIcon, color: Theme.of(context).colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
