import '../../widgets/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class AccountEmptyScreen extends StatelessWidget {
  const AccountEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_wallet, size: 250, color: Colors.grey.withOpacity(.3)),
            Text('Account list is empty', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 15),
            const Text(
              'Add accounts\nto control your finances',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 40,
                width: 200,
                child: PrimaryButton(
                  title: 'ADD ACCOUNT',
                  onTap: () => Navigator.pushNamed(context, '/account-create'),
                )),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
