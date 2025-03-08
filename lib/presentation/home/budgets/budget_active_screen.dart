import '../../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../../home.dart';
import '../../widgets/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetActiveScreen extends StatelessWidget {
  const BudgetActiveScreen({super.key, this.goBack = false});

  final bool goBack;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_balance, size: 250, color: Colors.grey.withOpacity(.3)),
                Text('There is any active budget', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 15),
                const Text(
                  'Active budget to be able\nto manage its accounts',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 20),
                InkWell(
                    onTap: () {
                      BlocProvider.of<ButtomNavigationBloc>(context)
                          .add(const ButtomNavigationEvent.push(NavigationPages.budget));
                      if (goBack) {
                        Navigator.pop(context);
                      }
                    },
                    child: const SizedBox(height: 40, width: 220, child: PrimaryButton(title: 'ACTIVE BUDGET'))),
                const SizedBox(height: 10),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/budget-create');
                    },
                    child: const SizedBox(height: 40, width: 220, child: PrimaryButton(title: 'ADD BUDGET'))),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
