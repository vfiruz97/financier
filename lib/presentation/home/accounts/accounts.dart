import '../../../application/account/account_update/account_update_bloc.dart';
import '../../../application/ids/ids_bloc.dart';
import '../../../domain/financier/account/account.dart';
import '../../../infrastructure/database/daos/account_dao.dart';
import '../../../injection.dart';
import '../budgets/budget_active_screen.dart';
import '../../widgets/components/buttons/primary_button.dart';
import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'account_empty_screen.dart';

class AccountTitle extends StatelessWidget {
  const AccountTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeAppBarWidget(
      title: 'Accounts',
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              const Text('Show deleted '),
              SizedBox(
                width: 20,
                height: 20,
                child: Checkbox(
                  value: context.watch<AccountUpdateBloc>().state.showDeleted,
                  onChanged: (_) {
                    BlocProvider.of<AccountUpdateBloc>(context).add(const AccountUpdateEvent.toggleShowDeleted());
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    final budgetId = context.watch<IdsBloc>().state.activeBudgetId;
    if (budgetId == null) {
      return const BudgetActiveScreen();
    }

    final showDeleted = context.watch<AccountUpdateBloc>().state.showDeleted;

    return StreamBuilder<List<Account>>(
        stream: showDeleted
            ? getIt<AccountsDao>().watchAllWithDeletedByBudgetId(budgetId) as Stream<List<Account>>
            : getIt<AccountsDao>().watchAllByBudgetId(budgetId) as Stream<List<Account>>,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final accounts = snapshot.data;
            if (accounts != null && accounts.isNotEmpty) {
              return Container(
                margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: WhiteCardWidget(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (var account in accounts)
                              InkWell(
                                onTap: () {
                                  BlocProvider.of<AccountUpdateBloc>(context)
                                      .add(AccountUpdateEvent.assignAccount(account));
                                  Navigator.of(context).pushNamed('/account-update');
                                },
                                child: ListAccountItemWidget(
                                  name: account.name.getOrCrash(),
                                  icon: account.iconAvatar.icon,
                                  balance: '${account.currencyId.code} ${account.balance.getOrCrash()}',
                                  isDeleted: account.deletedAt != null,
                                  bottomBorder: !(account == accounts.last),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 15,
                        left: 0,
                        right: 0,
                        height: 45,
                        child: PrimaryButton(
                          title: 'NEW ACCOUNT',
                          onTap: () => Navigator.pushNamed(context, '/account-create'),
                        )),
                  ],
                ),
              );
            }
            return const AccountEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

class ListAccountItemWidget extends StatelessWidget {
  const ListAccountItemWidget({
    super.key,
    required this.name,
    required this.icon,
    required this.balance,
    this.bottomBorder = true,
    this.isDeleted = false,
  });
  final String name;
  final IconData icon;
  final String balance;
  final bool isDeleted;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: bottomBorder
          ? BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.secondary)))
          : null,
      child: Row(
        children: [
          Icon(icon, color: isDeleted ? Colors.grey : Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 10),
          Expanded(
              child: Text(name,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: isDeleted ? Colors.grey : Theme.of(context).colorScheme.primary),
                  maxLines: 1)),
          Expanded(
            child: Text(
              balance,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: isDeleted ? Colors.grey : Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
