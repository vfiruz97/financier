import '../../application/account/account_update/account_update_bloc.dart';
import '../../application/auth/auth/auth_bloc.dart';
import '../../application/ids/ids_bloc.dart';
import 'dialogs/account_name_update_form_dialog.dart';
import '../transactions/expense/dialog/confirm_dialog.dart';
import '../widgets/components/back_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/components/white_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dialogs/account_icon_update_form_dialog.dart';

class AccountUpdateScreen extends StatelessWidget {
  const AccountUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = BlocProvider.of<AuthBloc>(context).state.user.name.getOrElse('Financier');
    final account = context.watch<AccountUpdateBloc>().state.account;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.blueGrey.shade100,
          child: Stack(
            children: [
              const Positioned(left: 0, top: 0, right: 0, child: BackAppBar(title: 'Account Info')),
              Positioned(
                left: 0,
                top: 60,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AccountTitle(name: account.name.getOrElse(''), owner: userName, icon: account.iconAvatar.icon),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            WhiteCardWidget(
                              child: Column(
                                children: [
                                  ListAccountItem(
                                    icon: Icons.article_outlined,
                                    fieldName: 'Name',
                                    value: account.name.getOrElse(''),
                                    onEdit: true,
                                    onTap: () {
                                      BlocProvider.of<AccountUpdateBloc>(context)
                                          .add(AccountUpdateEvent.assignAccount(account));
                                      showDialog(context: context, builder: (_) => const AccountNameUpdateFormDialog());
                                    },
                                  ),
                                  ListAccountItem(
                                    icon: Icons.account_balance_outlined,
                                    fieldName: 'Balance',
                                    value: '${account.currencyId.code} ${account.balance.getOrCrash()}',
                                    onEdit: false,
                                  ),
                                  Container(
                                    height: 70,
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        Icon(account.iconAvatar.icon, color: Theme.of(context).colorScheme.secondary),
                                        const SizedBox(width: 20),
                                        Expanded(
                                            child: Text('Icon',
                                                maxLines: 1,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall
                                                    ?.copyWith(color: Theme.of(context).colorScheme.primary))),
                                        InkWell(
                                            onTap: () {
                                              BlocProvider.of<AccountUpdateBloc>(context)
                                                  .add(AccountUpdateEvent.assignAccount(account));
                                              showDialog(
                                                  context: context,
                                                  builder: (_) => const AccountIconUpdateFormDialog());
                                            },
                                            child:
                                                Icon(Icons.mode_edit_outlined, color: Theme.of(context).primaryColor)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            WhiteCardWidget(
                              child: AccountIconButton(
                                title: 'View all transactions by this account',
                                icon: Icons.chrome_reader_mode_outlined,
                                onTap: () {
                                  Navigator.pushNamed(context, '/account-transactions', arguments: {
                                    'accountId': [account.id.getOrElse('')].toList()
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 10),
                            WhiteCardWidget(
                              child: AccountIconButton(
                                  title: 'Delete account',
                                  icon: Icons.delete_outline,
                                  onTap: () async {
                                    // show the dialog
                                    final bool? response = await ConfirmDialog.show(
                                      context,
                                      title: 'Confirm account deletion',
                                      message: 'Transactions history for this account will be not affected. '
                                          'You can restore this account in future if needed',
                                      yesText: 'DELETE',
                                      noText: 'CANCEL',
                                    );

                                    if (response != null && response) {
                                      BlocProvider.of<AccountUpdateBloc>(context)
                                          .add(const AccountUpdateEvent.delete());
                                      BlocProvider.of<IdsBloc>(context).add(const IdsEvent.refreshAccountIds());
                                      Navigator.pop(context);
                                    }

                                    return null;
                                  }),
                            ),
                            const SizedBox(height: 10),
                            if (account.deletedAt != null)
                              WhiteCardWidget(
                                child: AccountIconButton(
                                    title: 'Restore account',
                                    icon: Icons.settings_backup_restore_outlined,
                                    onTap: () async {
                                      BlocProvider.of<AccountUpdateBloc>(context)
                                          .add(const AccountUpdateEvent.restore());
                                      BlocProvider.of<IdsBloc>(context).add(const IdsEvent.refreshAccountIds());
                                      // Navigator.pop(context);
                                    }),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountIconButton extends StatelessWidget {
  const AccountIconButton({super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.secondary),
            const SizedBox(width: 20),
            Expanded(
              child: Text(title,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
            ),
          ],
        ),
      ),
    );
  }
}

class ListAccountItem extends StatelessWidget {
  const ListAccountItem({
    super.key,
    required this.icon,
    required this.fieldName,
    required this.value,
    this.onEdit = false,
    this.bottomBorder = true,
    this.onTap,
  });

  final IconData icon;
  final String fieldName;
  final String value;
  final bool onEdit;
  final bool bottomBorder;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(fieldName,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 12)),
                const SizedBox(height: 4),
                Text(value,
                    maxLines: 1,
                    style:
                        Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
              ],
            ),
          ),
          if (onEdit)
            InkWell(
                onTap: () => onTap != null ? onTap!() : null,
                child: Icon(Icons.mode_edit_outlined, color: Theme.of(context).primaryColor)),
        ],
      ),
    );
  }
}

class AccountTitle extends StatelessWidget {
  const AccountTitle({super.key, required this.name, required this.owner, required this.icon});

  final String name;
  final String owner;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon, size: 35, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 8),
          Text(name,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
          Text(
            owner,
            maxLines: 1,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ],
      ),
    );
  }
}
