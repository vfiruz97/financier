import '../../../application/ids/ids_bloc.dart';
import '../../../application/transaction/expense_transaction_update/expense_transaction_update_bloc.dart';
import '../../../application/transaction/income_transaction_update/income_transaction_update_bloc.dart';
import '../../../application/transaction/transfer_transaction_update/transfer_transaction_update_bloc.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
import '../../../injection.dart';
import '../accounts/account_empty_screen.dart';
import '../budgets/budget_active_screen.dart';
import 'transaction_empty_screen.dart';
import '../../view_model/transactions_sort.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Transactions');
  }
}

class TransactionBody extends StatelessWidget {
  const TransactionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final activeAccountIds = context.watch<IdsBloc>().state.accountIds;
    if (activeAccountIds == null || activeAccountIds.isEmpty) {
      final activeBudgetId = context.watch<IdsBloc>().state.activeBudgetId;
      if (activeBudgetId == null) {
        return const BudgetActiveScreen();
      }
      return const AccountEmptyScreen();
    }

    return StreamBuilder<List<TransactionWithRelationship>>(
        stream: getIt<TransactionsDao>().watchAllWhereAccountIdIn(activeAccountIds),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final transactionWR = snapshot.data;
            if (transactionWR != null && transactionWR.isNotEmpty) {
              return FutureBuilder<Map<String, TransactionsSort>>(
                  future: _sortEntriesInBackground(transactionWR),
                  builder: (context, snapshot) {
                    final mapTransactionSortList = snapshot.data;
                    if (mapTransactionSortList != null && mapTransactionSortList.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ListView(children: _itemsGroup(mapTransactionSortList, context)),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  });
            }
            return const TransactionEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }

  Map<String, TransactionsSort> _sortEntries(List<TransactionWithRelationship> transactionWRs) {
    late Map<String, TransactionsSort> sortedEntries = {};

    for (final transactionWR in transactionWRs) {
      final createdAt = DateFormat.yMMMMd().format(transactionWR.transaction.createdAt); //('y-M-d')
      if (sortedEntries.containsKey(createdAt)) {
        sortedEntries[createdAt] = sortedEntries[createdAt]!..addTransactionWithR(transactionWR);
      } else {
        sortedEntries[createdAt] = TransactionsSort.initial()..addTransactionWithR(transactionWR);
      }
    }
    return sortedEntries;
  }

  /// This method calculates compution in new isolate to
  /// win performance in main isolate.
  Future<Map<String, TransactionsSort>> _sortEntriesInBackground(
    List<TransactionWithRelationship> transactionWRs,
  ) async {
    return compute(_sortEntries, transactionWRs);
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

  String _getCategoryName(TransactionWithRelationship transactionWithRelationship) {
    if (transactionWithRelationship.transaction.type == TransactionType.transferFrom) {
      return 'Transfer from';
    } else if (transactionWithRelationship.transaction.type == TransactionType.transferTo) {
      return 'Transfer to';
    }

    return transactionWithRelationship.category?.name.getOrElse('') ?? '';
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

  String _getTime(DateTime date) {
    return DateFormat('H:mm').format(date);
  }

  List<Widget> _itemsGroup(Map<String, TransactionsSort> mapTransactionSortList, BuildContext context) {
    late List<Widget> widget = [];
    mapTransactionSortList.forEach((createdAt, transactionSort) {
      widget.add(Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CardTitleTransactionList(date: createdAt, totalAmountsList: transactionSort.totalAmounts),
          WhiteCardWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final transactionWR in transactionSort.transactionWithRelationships)
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        if (transactionWR.transaction.type == TransactionType.expense) {
                          BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
                              .add(ExpenseTransactionUpdateEvent.assignTransaction(transactionWR.transaction));
                          Navigator.pushNamed(context, '/expense-update');
                        } else if (transactionWR.transaction.type == TransactionType.income) {
                          BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                              .add(IncomeTransactionUpdateEvent.assignTransaction(transactionWR.transaction));
                          Navigator.pushNamed(context, '/income-update');
                        } else {
                          BlocProvider.of<TransferTransactionUpdateBloc>(context)
                              .add(TransferTransactionUpdateEvent.assignTransaction(transactionWR.transaction));
                          Navigator.pushNamed(context, '/transfer-update');
                        }
                      },
                      child: ListTransactionItem(
                        categoryName: _getCategoryName(transactionWR),
                        transactionIcon: _getTransactionIcon(transactionWR.transaction.type),
                        accountName: transactionWR.account?.name.getOrElse('') ?? '',
                        accountIcon: transactionWR.account?.iconAvatar.icon ?? Icons.credit_card,
                        amount: _getBalanceLabel(transactionWR),
                        time: _getTime(transactionWR.transaction.createdAt),
                        bottomBorder: !(transactionWR == transactionSort.transactionWithRelationships.last),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ));
    });
    return widget;
  }
}

class CardTitleTransactionList extends StatelessWidget {
  const CardTitleTransactionList({super.key, required this.date, required this.totalAmountsList});

  final String date;
  final List<TotalAmounts> totalAmountsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(date,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.primaryContainer),
                overflow: TextOverflow.clip,
                maxLines: 1),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (final totalAmounts in totalAmountsList)
                Row(
                  children: [
                    if (totalAmounts.totalExpense.balance.getOrElse(0) > 0)
                      Text(
                        '-${totalAmounts.totalExpense.currencyCode} ${totalAmounts.totalExpense.balanceStr}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    if (totalAmounts.totalIncome.balance.getOrElse(0) > 0) ...[
                      const SizedBox(width: 10),
                      Text(
                        '+${totalAmounts.totalIncome.currencyCode} ${totalAmounts.totalIncome.balanceStr}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTransactionItem extends StatelessWidget {
  const ListTransactionItem({
    super.key,
    required this.transactionIcon,
    required this.categoryName,
    required this.amount,
    required this.time,
    required this.accountIcon,
    required this.accountName,
    this.bottomBorder = true,
    this.description,
  });

  final IconData transactionIcon;
  final String categoryName;
  final String amount;
  final String time;
  final IconData accountIcon;
  final String accountName;
  final String? description;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: bottomBorder
          ? BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.secondary)))
          : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(transactionIcon, size: 16, color: Theme.of(context).colorScheme.secondary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  categoryName,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Text(amount,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: amount.startsWith('+')
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary),
                  overflow: TextOverflow.clip,
                  maxLines: 1),
            ],
          ),
          Row(
            children: [
              Expanded(child: Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12))),
              Icon(accountIcon, size: 12, color: Colors.grey),
              const SizedBox(width: 6),
              Text(accountName, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          if (description != null)
            Text(description!, style: const TextStyle(color: Colors.grey, fontSize: 12), maxLines: 1),
        ],
      ),
    );
  }
}
