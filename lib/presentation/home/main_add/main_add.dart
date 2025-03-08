import 'package:flutter/material.dart';

import '../../widgets/home_app_bar_widget.dart';

class MainAddTitle extends StatelessWidget {
  const MainAddTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'New transaction');
  }
}

class MainAddBody extends StatelessWidget {
  const MainAddBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/expense-create');
                },
                child: const ListAddTransactionItem(
                  title: 'Expense',
                  icon: Icons.vertical_align_top,
                  hint: 'You are doing any type of payment or giving money for somebody',
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/income-create');
                },
                child: const ListAddTransactionItem(
                  title: 'Income',
                  icon: Icons.vertical_align_bottom,
                  hint: 'You are receiving money of transfer from third-party',
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/transfer-create');
                },
                child: const ListAddTransactionItem(
                  title: 'Transfer',
                  icon: Icons.vertical_align_center_rounded,
                  hint:
                      'You are transferring money between your accounts, getting cash from an ATM, moving cash into other place',
                  bottomBorder: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListAddTransactionItem extends StatelessWidget {
  const ListAddTransactionItem(
      {super.key, required this.title, required this.icon, required this.hint, this.bottomBorder = true});

  final String title;
  final IconData icon;
  final String hint;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(icon, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Text(title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 22, color: Theme.of(context).colorScheme.primary)),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5),
                    Icon(Icons.help, size: 14, color: Theme.of(context).colorScheme.secondary),
                    const SizedBox(width: 20),
                    Expanded(
                        child: Text(
                      hint,
                      style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.secondaryContainer),
                      maxLines: 3,
                    )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
