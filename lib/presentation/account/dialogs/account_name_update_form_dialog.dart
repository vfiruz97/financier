import '../../../application/account/account_update/account_update_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountNameUpdateFormDialog extends StatelessWidget {
  const AccountNameUpdateFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final accountName = context.watch<AccountUpdateBloc>().state.accountBlack.name;
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Edit account name', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80,
              child: TextFormField(
                initialValue: accountName.getOrElse(''),
                onChanged: (value) {
                  BlocProvider.of<AccountUpdateBloc>(context).add(AccountUpdateEvent.changeAccountName(value));
                },
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Account name:', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                keyboardType: TextInputType.text,
                validator: (_) => accountName.value.fold(
                    (f) => f.maybeMap(
                        empty: (_) => 'Fill in the field',
                        hasIncorrectLength: (_) => 'Incorrect length',
                        orElse: () => 'Incorrect format'),
                    (_) => null),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                if (accountName.isValid()) {
                  BlocProvider.of<AccountUpdateBloc>(context).add(const AccountUpdateEvent.save());
                  Navigator.pop(context);
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Theme.of(context).colorScheme.primary.withOpacity(0.6);
                    }
                    return Theme.of(context).colorScheme.primary;
                  },
                ),
              ),
              child: Text('SAVE',
                  style:
                      Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary)),
            ),
          ],
        ),
      ),
    );
  }
}
