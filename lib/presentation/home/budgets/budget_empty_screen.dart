import '../../widgets/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class BudgetEmptyScreen extends StatelessWidget {
  const BudgetEmptyScreen({
    super.key,
  });

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
                Text('Budget list is empty', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 15),
                const Text(
                  'Add budget to control\nfinancial condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 20),
                InkWell(
                    onTap: () => Navigator.pushNamed(context, '/budget-create'),
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
