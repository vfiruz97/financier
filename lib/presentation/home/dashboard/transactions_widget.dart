import '../../../application/buttom_navigation/buttom_navigation_bloc.dart';
import '../../../application/ids/ids_bloc.dart';
import '../../../application/settings/settings_controller.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
import '../../../injection.dart';
import '../../home.dart';
import '../../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// The [activeBudgetId] contains id of active budget.
    final activeBudgetId = context.watch<IdsBloc>().state.activeBudgetId;
    if (activeBudgetId == null) {
      return const _NoTransactionYetWidget();
    }

    /// The [activeAccountIds] contains ids of budget accounts.
    final activeAccountIds = context.watch<IdsBloc>().state.accountIds;
    if (activeAccountIds == null || activeAccountIds.isEmpty) {
      return const _NoTransactionYetWidget();
    }

    /// The [_limit] from user settings.
    final limit = getIt<SettingsController>().dashboardTransactionsCount;

    if (limit == 0) return const SizedBox();

    return StreamBuilder<List<TransactionWithRelationship>>(
        stream: getIt<TransactionsDao>().watchAllWhereAccountIdInAndLimit(activeAccountIds, limit: limit),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final transactionWRs = snapshot.data;
            if (transactionWRs != null && transactionWRs.isNotEmpty) {
              return Column(
                children: [
                  WhiteCardWidget(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Last transactions',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
                              overflow: TextOverflow.ellipsis),
                          const SizedBox(height: 6),
                          for (final transactionWR in transactionWRs) TransactionItem(transactionWR: transactionWR)
                        ],
                      ),
                    ),
                  ),
                  if (transactionWRs.length == limit)
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => BlocProvider.of<ButtomNavigationBloc>(context)
                            .add(const ButtomNavigationEvent.push(NavigationPages.transaction)),
                        child: Container(
                          height: 40,
                          color: Colors.blueGrey.shade200,
                          child: Center(
                            child: Text('SHOW MORE',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: Theme.of(context).colorScheme.primary)),
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 20),
                ],
              );
            }
            return const _NoTransactionYetWidget();
          }
          return const SizedBox();
        });
  }
}

class _NoTransactionYetWidget extends StatelessWidget {
  const _NoTransactionYetWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhiteCardWidget(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 230,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Opacity(
                        opacity: 0.9,
                        child: Image.asset('assets/images/no_transactions.png', height: 200, cacheHeight: 200),
                      ),
                    ),
                  ),
                  Text('You are not added transactions yet',
                      style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary))
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionWR});

  final TransactionWithRelationship transactionWR;

  @override
  Widget build(BuildContext context) {
    final amount = _getBalanceLabel(transactionWR);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(_getTransactionIcon(transactionWR.transaction.type),
              size: 16, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _getCategoryName(transactionWR),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 13),
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
          Text(amount,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 13,
                  color: amount.startsWith('+')
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.secondaryContainer),
              overflow: TextOverflow.clip,
              maxLines: 1),
        ],
      ),
    );
  }

  String _getCategoryName(TransactionWithRelationship transactionWithRelationship) {
    if (transactionWithRelationship.transaction.type == TransactionType.transferFrom) {
      return 'Transfer from';
    } else if (transactionWithRelationship.transaction.type == TransactionType.transferTo) {
      return 'Transfer to';
    }

    return transactionWithRelationship.category?.name.getOrElse('Others') ?? '';
  }

  IconData _getTransactionIcon(TransactionType type) {
    if (type == TransactionType.expense) {
      return Icons.vertical_align_top;
    } else if (type == TransactionType.income) {
      return Icons.vertical_align_bottom;
    } else {
      return Icons.vertical_align_center_rounded;
    }
  }

  String _getBalanceLabel(TransactionWithRelationship transactionWithRelationship) {
    late final String prefix;

    if (transactionWithRelationship.transaction.type == TransactionType.expense ||
        transactionWithRelationship.transaction.type == TransactionType.transferFrom) {
      prefix = '-';
    } else if (transactionWithRelationship.transaction.type == TransactionType.income ||
        transactionWithRelationship.transaction.type == TransactionType.transferTo) {
      prefix = '+';
    }

    final String currency = transactionWithRelationship.account?.currencyId.code ?? '';
    final String balance = transactionWithRelationship.transaction.balance.getOrElse(0).toString();

    return '$prefix$currency $balance';
  }
}
