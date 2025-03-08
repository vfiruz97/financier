import '../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../application/notification/notification_service.dart';
import '../injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/accounts/accounts.dart';
import 'home/budgets/budgets.dart';
import 'home/categories/categories.dart';
import 'home/dashboard/dashboard.dart';
import 'home/main_add/main_add.dart';
import 'home/menu/menu.dart';
import 'home/planning/planning.dart';
import 'home/settings/settings.dart';
import 'home/statistics/statistics.dart';
import 'home/transactions/transactions.dart';
import 'widgets/home_wrapper_widget.dart';

enum NavigationPages { dashboard, transaction, main, statistics, menu, account, budget, category, plan, settings }

class ButtomNavigationPage {
  final Widget title;
  final Widget body;

  ButtomNavigationPage(this.title, this.body);

  static final List<ButtomNavigationPage> pages = [
    ButtomNavigationPage(const DashboardTitle(), const DashboardBody()),
    ButtomNavigationPage(const TransactionTitle(), const TransactionBody()),
    ButtomNavigationPage(const MainAddTitle(), const MainAddBody()),
    ButtomNavigationPage(const StatisticsTitle(), const StatisticsBody()),
    ButtomNavigationPage(const MenuTitle(), const MenuBody()),
    ButtomNavigationPage(const AccountTitle(), const AccountBody()),
    ButtomNavigationPage(const BudgetTitle(), const BudgetBody()),
    ButtomNavigationPage(const CategoriesTitle(), const CategoriesBody()),
    ButtomNavigationPage(const PlanningTitle(), const PlanningBody()),
    ButtomNavigationPage(const SettingsTitle(), const SettingsBody()),
  ];

  static ButtomNavigationPage get(NavigationPages page) {
    return ButtomNavigationPage.pages.elementAt(page.index);
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getIt<NotificationService>().notificationRouting(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtomNavigationBloc, ButtomNavigationState>(
      builder: (context, state) {
        final page = ButtomNavigationPage.get(state.page);
        return HomeWrapperWidget(
          title: page.title,
          body: page.body,
        );
      },
    );
  }
}
