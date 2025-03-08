import '../../application/account/account_create/account_create_bloc.dart';
import '../../application/ids/ids_bloc.dart';
import '../../injection.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'choose_currency_screen.dart';
import 'choose_icon_screen.dart';
import 'choose_name_screen.dart';

class AccountCreateScreen extends StatelessWidget {
  const AccountCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final budgetId = BlocProvider.of<IdsBloc>(context).state.activeBudgetId;
    return BlocProvider(
      create: (context) => getIt<AccountCreateBloc>()..add(AccountCreateEvent.assignBudgetId(budgetId ?? 'undefined')),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: BlocListener<AccountCreateBloc, AccountCreateState>(
            listenWhen: (p, c) => p.failureOrSuccessOption != c.failureOrSuccessOption,
            listener: (context, state) {
              final String? failureMesssage = state.failureOrSuccessOption.fold(
                () => null,
                (failureOrSuccess) => failureOrSuccess.fold(
                  (f) => f.map(unexpected: (_) => 'Unexpected error occured'),
                  (_) {
                    BlocProvider.of<IdsBloc>(context).add(const IdsEvent.refreshAccountIds());
                    Navigator.pop(context);
                    return null;
                  },
                ),
              );
              if (failureMesssage != null) {
                final snackBar = SnackBar(content: Text(failureMesssage));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Body(),
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final PageController controller = PageController(initialPage: 0);

  String backButton = '';
  String nextButton = 'NEXT';

  Function()? onBack;
  Function()? onNext;

  @override
  void initState() {
    onNext = goToPage(1);
    super.initState();
  }

  Function() goToPage(int page) => () => controller.jumpToPage(page);

  void _onChangePage(int page) {
    setState(() {
      if (page == 0) {
        backButton = '';
        nextButton = 'NEXT';
        onBack = null;
        onNext = goToPage(1);
      } else if (page == 1) {
        backButton = 'PREVIOUS';
        nextButton = 'NEXT';
        onNext = goToPage(2);
        onBack = goToPage(0);
      } else if (page == 2) {
        backButton = 'PREVIOUS';
        nextButton = 'FINISH';
        onNext = () {
          BlocProvider.of<AccountCreateBloc>(context).add(const AccountCreateEvent.save());
        };
        onBack = goToPage(1);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          // App bar
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HomeAppBarWidget(
                  title: 'Create new Account',
                  actions: [InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close))])),
          // Body
          Positioned(
            top: 60,
            bottom: 60,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blueGrey.shade100,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                onPageChanged: _onChangePage,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ChooseCurrencyScreen(),
                  ChooseIconScreen(),
                  ChooseNameScreen(),
                ],
              ),
            ),
          ),
          // Bottom buttons
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
                        onTap: onBack,
                        child: SizedBox(
                          height: 60,
                          child: Center(
                              child: Text(backButton,
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
                        onTap: onNext,
                        child: SizedBox(
                          height: 60,
                          child: Center(
                              child: Text(nextButton,
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
        ]),
      ),
    );
  }
}
