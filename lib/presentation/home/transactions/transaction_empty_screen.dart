import '../../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../../home.dart';
import '../../widgets/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionEmptyScreen extends StatelessWidget {
  const TransactionEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ButtomNavigationBloc>(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.assignment, size: 250, color: Colors.grey.withOpacity(.3)),
            Text('Transaction list is empty', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 15),
            const Text(
              'Add transactions to control\nexpenses and incomes',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  bloc.add(const ButtomNavigationEvent.push(NavigationPages.main));
                  Navigator.pushNamed(context, '/home');
                },
                child: const SizedBox(height: 40, width: 220, child: PrimaryButton(title: 'ADD TRANSACTION'))),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
