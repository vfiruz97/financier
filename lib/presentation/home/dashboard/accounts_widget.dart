import '../../../application/account/account_update/account_update_bloc.dart';
import '../../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../../../application/ids/ids_bloc.dart';
import '../../../application/settings/settings_controller.dart';
import '../../../domain/financier/account/account.dart';
import '../../../infrastructure/database/daos/account_dao.dart';
import '../../../injection.dart';
import '../../home.dart';
import '../../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your accounts',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
            Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => BlocProvider.of<ButtomNavigationBloc>(context)
                      .add(const ButtomNavigationEvent.push(NavigationPages.account)),
                  child: Text('View all',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Theme.of(context).colorScheme.primaryContainer))),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const _AccountsItem(),
      ],
    );
  }
}

class _AccountsItem extends StatelessWidget {
  const _AccountsItem();

  @override
  Widget build(BuildContext context) {
    /// The [activeBudgetId] contains id of active budget.
    final activeBudgetId = context.watch<IdsBloc>().state.activeBudgetId;
    if (activeBudgetId == null) {
      return const Text('No accounts', style: TextStyle(fontSize: 12));
    }

    /// The [_limit] from user settings.
    final limit = getIt<SettingsController>().dashboardAccountsCount;

    if (limit == 0) return const SizedBox();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        /// The [_widthOfCard] computed. 5 px space for between cards.
        final widthOfCard = (constraints.maxWidth / 2) - 5;

        return StreamBuilder<List<Account>>(
          stream:
              getIt<AccountsDao>().watchAllByBudgetIdAndLimit(activeBudgetId, limit: limit) as Stream<List<Account>>,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final accounts = snapshot.data;
              if (accounts != null && accounts.isNotEmpty) {
                return Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    for (final account in accounts)
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            BlocProvider.of<AccountUpdateBloc>(context).add(AccountUpdateEvent.assignAccount(account));
                            Navigator.of(context).pushNamed('/account-update');
                          },
                          child: SizedBox(
                            width: widthOfCard,
                            height: 55,
                            child: WhiteCardWidget(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 22,
                                      child: Icon(account.iconAvatar.icon,
                                          color: Theme.of(context).colorScheme.secondary, size: 20),
                                    ),
                                    const SizedBox(width: 8),
                                    SizedBox(
                                      width: widthOfCard - 55,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            account.name.getOrElse(''),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Theme.of(context).colorScheme.primary),
                                            maxLines: 1,
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            '${account.currencyId.code} ${account.balance.getOrCrash()}',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).primaryColor,
                                            ),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              }
              return const Text('No accounts', style: TextStyle(fontSize: 12));
            }
            return const SizedBox();
          },
        );
      },
    );
  }
}
