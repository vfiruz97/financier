import '../../application/transaction/expense_transaction_update/expense_transaction_update_bloc.dart';
import '../../application/transaction/income_transaction_update/income_transaction_update_bloc.dart';
import '../../application/transaction/transfer_transaction_update/transfer_transaction_update_bloc.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/financier/transaction/transaction.dart';
import '../../infrastructure/database/daos/transaction_dao.dart';
import '../home/transactions/transaction_empty_screen.dart';
import '../widgets/components/back_app_bar.dart';
import '../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../injection.dart';

class AccountTransactionScreen extends StatelessWidget {
  const AccountTransactionScreen({super.key, required this.accountId});

  final List<String> accountId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.blueGrey.shade100,
          child: Stack(
            children: [
              const Positioned(left: 0, top: 0, right: 0, child: BackAppBar(title: 'Account transactions')),
              Positioned(left: 0, top: 60, right: 0, bottom: 0, child: Body(accountId: accountId)),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.accountId,
  });

  final List<String> accountId;

  Map<String, List<TransactionWithRelationship>> _sortEntries(List<TransactionWithRelationship> transactionWRs) {
    late Map<String, List<TransactionWithRelationship>> sortedEntries = {};

    for (final transactionWR in transactionWRs) {
      final createdAt = DateFormat.yMMMMd().format(transactionWR.transaction.createdAt); //('y-M-d')
      if (sortedEntries.containsKey(createdAt)) {
        sortedEntries[createdAt] = sortedEntries[createdAt]!..add(transactionWR);
      } else {
        sortedEntries[createdAt] = [transactionWR];
      }
    }
    return sortedEntries;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TransactionWithRelationship>>(
        stream: getIt<TransactionsDao>().watchAllWhereAccountIdIn(accountId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final transactionWR = snapshot.data;
            if (transactionWR != null && transactionWR.isNotEmpty) {
              final mapTransactionWRs = _sortEntries(transactionWR);
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(children: _itemsGroup(mapTransactionWRs, context)),
              );
            }
            return const TransactionEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }

  List<Widget> _itemsGroup(Map<String, List<TransactionWithRelationship>> mapTransactionWRs, BuildContext context) {
    late List<Widget> widget = [];
    mapTransactionWRs.forEach((createdAt, transactionWR) {
      final totalBalance = _countTotalBalance(transactionWR);
      widget.add(Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CardTitleTransactionList(
            date: createdAt,
            totalExpense: totalBalance['totalExpense']! > 0 ? '-${totalBalance['totalExpense']}' : null,
            totalIncome: totalBalance['totalIncome']! > 0 ? '+${totalBalance['totalIncome']}' : null,
          ),
          WhiteCardWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final transaction in transactionWR)
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        if (transaction.transaction.type == TransactionType.expense) {
                          BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
                              .add(ExpenseTransactionUpdateEvent.assignTransaction(transaction.transaction));
                          Navigator.pushNamed(context, '/expense-update');
                        } else if (transaction.transaction.type == TransactionType.income) {
                          BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                              .add(IncomeTransactionUpdateEvent.assignTransaction(transaction.transaction));
                          Navigator.pushNamed(context, '/income-update');
                        } else {
                          BlocProvider.of<TransferTransactionUpdateBloc>(context)
                              .add(TransferTransactionUpdateEvent.assignTransaction(transaction.transaction));
                          Navigator.pushNamed(context, '/transfer-update');
                        }
                      },
                      child: ListTransactionItem(
                        categoryName: _getCategoryName(transaction),
                        transactionIcon: _getTransactionIcon(transaction.transaction.type),
                        accountName: transaction.account?.name.getOrElse('') ?? '',
                        accountIcon: transaction.account?.iconAvatar.icon ?? Icons.credit_card,
                        amount: _getBalanceLabel(transaction),
                        time: _getTime(transaction.transaction.createdAt),
                        bottomBorder: !(transaction == transactionWR.last),
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

  Map<String, double> _countTotalBalance(List<TransactionWithRelationship> transactions) {
    double totalExpense = 0;
    double totalIncome = 0;
    for (var transaction in transactions) {
      if (transaction.transaction.type == TransactionType.expense ||
          transaction.transaction.type == TransactionType.transferFrom) {
        totalExpense += transaction.transaction.balance.getOrElse(0);
      } else if (transaction.transaction.type == TransactionType.income ||
          transaction.transaction.type == TransactionType.transferTo) {
        totalIncome += transaction.transaction.balance.getOrElse(0);
      }
    }
    return {
      'totalExpense': Balance(totalExpense).getOrElse(0),
      'totalIncome': Balance(totalIncome).getOrElse(0),
    };
  }
}

class CardTitleTransactionList extends StatelessWidget {
  const CardTitleTransactionList({super.key, required this.date, this.totalIncome, this.totalExpense});

  final String date;
  final String? totalIncome;
  final String? totalExpense;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
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
          Text(
            totalExpense ?? '',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.normal),
          ),
          const SizedBox(width: 10),
          Text(
            totalIncome ?? '',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.normal),
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
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
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
