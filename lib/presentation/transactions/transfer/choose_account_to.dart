import '../../../application/ids/ids_bloc.dart';
import '../../../application/transaction/transfer_transaction_create/transfer_transaction_create_bloc.dart';
import '../../../domain/financier/account/account.dart';
import '../../../infrastructure/database/daos/account_dao.dart';
import '../../home/accounts/account_empty_screen.dart';
import '../../home/budgets/budget_active_screen.dart';
import '../../widgets/components/back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ChooseAccountTo extends StatelessWidget {
  const ChooseAccountTo({super.key, required this.onTap, this.onBack});

  final Function(bool saved) onTap;
  final Function()? onBack;

  @override
  Widget build(BuildContext context) {
    final budgetId = context.watch<IdsBloc>().state.activeBudgetId;
    final accountFrom = BlocProvider.of<TransferTransactionCreateBloc>(context).state.accountFrom;

    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: BackAppBar(
              title: 'Transfer to',
              onBack: onBack != null ? () => onBack!() : null,
            )),
        Positioned(
          left: 0,
          top: 60,
          right: 0,
          bottom: 0,
          child: budgetId == null
              ? const BudgetActiveScreen(goBack: true)
              : StreamBuilder<List<Account>>(
                  stream: getIt<AccountsDao>().watchAllByBudgetId(budgetId) as Stream<List<Account>>,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final accounts = snapshot.data
                        ?..removeWhere((e) => e.id.getOrCrash() == accountFrom.id.getOrCrash());
                      if (accounts != null && accounts.isNotEmpty) {
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              for (var account in accounts)
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      BlocProvider.of<TransferTransactionCreateBloc>(context)
                                          .add(TransferTransactionCreateEvent.assignAccountTo(account));
                                      final accountFrom =
                                          BlocProvider.of<TransferTransactionCreateBloc>(context).state.accountFrom;

                                      if (accountFrom.currencyId.getOrCrash() == account.currencyId.getOrCrash()) {
                                        BlocProvider.of<TransferTransactionCreateBloc>(context)
                                            .add(const TransferTransactionCreateEvent.save());
                                        onTap(true);
                                      } else {
                                        onTap(false);
                                      }
                                    },
                                    child: ListAccountItem(
                                      name: account.name.getOrCrash(),
                                      icon: account.iconAvatar.icon,
                                      balance: '${account.currencyId.code} ${account.balance.getOrCrash()}',
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }
                      return const AccountEmptyScreen();
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
        ),
      ],
    );
  }
}

class ListAccountItem extends StatelessWidget {
  const ListAccountItem({super.key, required this.name, required this.icon, required this.balance});

  final String name;
  final IconData icon;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: .5))),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 10),
          Expanded(
              child: Text(name,
                  style:
                      Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary))),
          Text(balance,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
