import 'accounts_widget.dart';
import 'plans_widget.dart';
import 'transactions_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

class DashboardTitle extends StatelessWidget {
  const DashboardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Dashboard');
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            PlansWidget(),
            TransactionsWidget(),
            AccountsWidget(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
