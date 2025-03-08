import 'application/notification/notification_service.dart';
import 'presentation/about/about.dart';
import 'presentation/feedback/feedback_screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/budget/budget_update/budget_update_bloc.dart';
import 'presentation/account/account_create_screen.dart';
import 'presentation/account/account_transactions.dart';
import 'presentation/account/account_update_screen.dart';
import 'presentation/auth/login/login_form.dart';
import 'presentation/auth/main_auth.dart';
import 'presentation/auth/register/register_form.dart';
import 'presentation/budget/budget_create_form_screen.dart';
import 'presentation/budget/budget_update_form_screen.dart';
import 'presentation/home.dart';
import 'presentation/plan/plan_create_screen.dart';
import 'presentation/plan/plan_update_screen.dart';
import 'presentation/transactions/expense/edit_expense_transaction_screen.dart';
import 'presentation/transactions/expense/expense_create_form.dart';
import 'presentation/transactions/income/edit_income_transaction_screen.dart';
import 'presentation/transactions/income/income_create_form.dart';
import 'presentation/transactions/transfer/edit_transfer_transaction_screen.dart';
import 'presentation/transactions/transfer/transfer_create_form.dart';

import 'application/account/account_update/account_update_bloc.dart';
import 'application/auth/auth/auth_bloc.dart';
import 'application/buttom_navigation/buttom_navigation_bloc.dart';
import 'application/ids/ids_bloc.dart';
import 'application/plan/plan_update/plan_update_bloc.dart';
import 'application/settings/settings_controller.dart';
import 'application/transaction/expense_transaction_update/expense_transaction_update_bloc.dart';
import 'application/transaction/income_transaction_update/income_transaction_update_bloc.dart';
import 'application/transaction/transfer_transaction_update/transfer_transaction_update_bloc.dart';
import 'application/transaction_category/transaction_category_update/transaction_category_update_bloc.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );

  await configureDependencies();

  /// Important!!!
  /// It should be after [configureDependencies] line.
  /// It has dependencies on that.
  await getIt<SettingsController>().getLoadedSettings();

  getIt<NotificationService>().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: false, create: (context) => getIt<AuthBloc>()..add(const AuthEvent.checkAuth())),
        BlocProvider(lazy: true, create: (context) => getIt<IdsBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<ButtomNavigationBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<TransactionCategoryUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<BudgetUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<AccountUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<ExpenseTransactionUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<IncomeTransactionUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<TransferTransactionUpdateBloc>()),
        BlocProvider(lazy: true, create: (context) => getIt<PlanUpdateBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.money), //aquaBlue money
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.money),
        themeMode: ThemeMode.light,
        initialRoute: '/',
        // home: const SubTest(),
        onGenerateRoute: (RouteSettings routeSetting) {
          CustomPageRoute materialPage(Widget screen) {
            return CustomPageRoute(child: screen);
          }

          switch (routeSetting.name) {
            case '/':
              return materialPage(const BaseWidget());
            case '/main-auth':
              return materialPage(const MainAuthScreen());
            case '/login':
              return materialPage(const LoginForm());
            case '/register':
              return materialPage(const RegisterForm());
            case '/home':
              return materialPage(const HomeScreen());
            case '/budget-create':
              return materialPage(const BudgetCreateFormScreen());
            case '/budget-update':
              return materialPage(const BudgetUpdateFormScreen());
            case '/account-create':
              return materialPage(const AccountCreateScreen());
            case '/account-update':
              return materialPage(const AccountUpdateScreen());
            case '/account-transactions':
              final accountId = (routeSetting.arguments as Map)['accountId'] as List<String>;
              return materialPage(AccountTransactionScreen(accountId: accountId));
            case '/expense-create':
              return materialPage(const ExpenseCreateFormScreen());
            case '/expense-update':
              return materialPage(const EditExpenseTransactionScreen());
            case '/income-create':
              return materialPage(const IncomeCreateFormScreen());
            case '/income-update':
              return materialPage(const EditIncomeTransactionScreen());
            case '/transfer-create':
              return materialPage(const TransferCreateFormScreen());
            case '/transfer-update':
              return materialPage(const EditTransferTransactionScreen());
            case '/plan-create':
              return materialPage(const PlanCreateScreen());
            case '/plan-update':
              return materialPage(const PlanUpdateScreen());
            case '/feedback':
              return materialPage(const FeedbackScreen());
            case '/about':
              return materialPage(const AboutScreen());
            default:
              return materialPage(const MainAuthScreen());
          }
        },
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({
    required this.child,
  }) : super(pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // Here can wrap with animation widgets to do various animation during opening page
    return child;
  }
}

class BaseWidget extends StatelessWidget {
  const BaseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.checking) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.isAuthed) {
          BlocProvider.of<IdsBloc>(context).add(IdsEvent.started(state.userId));
          return const HomeScreen();
        }
        return const MainAuthScreen();
      },
    );
  }
}
