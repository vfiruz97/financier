import '../../../../application/ids/ids_bloc.dart';
import '../../../../domain/financier/transaction/transaction.dart';
import '../../../../infrastructure/database/daos/transaction_dao.dart';
import '../../../../injection.dart';
import 'no_data_widget.dart';
import '../../../view_model/transactions_sort.dart';
import '../../../widgets/components/white_card_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SummaryStatisticsBody extends StatelessWidget {
  const SummaryStatisticsBody({
    super.key,
    required this.dateTimeRange,
  });

  final DateTimeRange dateTimeRange;

  /// This method calculates compution in new isolate to
  /// win performance in main isolate.
  Future<TransactionsSort> _sortEntriesInBackground(
    List<TransactionWithRelationship> transactionWRs,
  ) async {
    return compute(_sortEntries, transactionWRs);
  }

  TransactionsSort _sortEntries(List<TransactionWithRelationship> transactionWRs) {
    final TransactionsSort data = TransactionsSort.initial();

    for (final transactionWR in transactionWRs) {
      data.addTransactionWithR(transactionWR);
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    final activeBudgetId = context.watch<IdsBloc>().state.activeBudgetId;
    final activeAccountIds = context.watch<IdsBloc>().state.accountIds;

    if (activeAccountIds == null || activeAccountIds.isEmpty || activeBudgetId == null) {
      return const NoDataWidget();
    }

    return StreamBuilder<List<TransactionWithRelationship>>(
        stream: getIt<TransactionsDao>().watchAllWhereAccountIdInAndDateBetween(
          activeAccountIds,
          startDate: dateTimeRange.start,
          endDate: dateTimeRange.end,
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final transactionWR = snapshot.data;
            if (transactionWR != null && transactionWR.isNotEmpty) {
              return FutureBuilder<TransactionsSort>(
                  future: _sortEntriesInBackground(transactionWR),
                  builder: (context, snapshot) {
                    final transactionSort = snapshot.data;
                    if (transactionSort != null) {
                      return Column(
                        children: [
                          WhiteCardWidget(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                    decoration:
                                        const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                                    child: Row(
                                      children: [
                                        Icon(Icons.vertical_align_top, color: Theme.of(context).primaryColor),
                                        const SizedBox(width: 10),
                                        Expanded(
                                            child: Text('Expenses',
                                                style: Theme.of(context).textTheme.titleSmall, maxLines: 1)),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              for (final _totalAmount in transactionSort.totalAmounts)
                                                Text(
                                                  '-${_totalAmount.totalExpense.currencyCode} ${_totalAmount.totalExpense.balanceStr}',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500,
                                                      color: Theme.of(context).primaryColor),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                    decoration:
                                        const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                                    child: Row(
                                      children: [
                                        Icon(Icons.vertical_align_bottom, color: Theme.of(context).primaryColor),
                                        const SizedBox(width: 10),
                                        Expanded(
                                            child: Text('Incomes',
                                                style: Theme.of(context).textTheme.titleSmall, maxLines: 1)),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              for (final _totalAmount in transactionSort.totalAmounts)
                                                Text(
                                                  '+${_totalAmount.totalIncome.currencyCode} ${_totalAmount.totalIncome.balanceStr}',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500,
                                                      color: Theme.of(context).primaryColor),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.vertical_align_center_rounded,
                                            color: Theme.of(context).primaryColor),
                                        const SizedBox(width: 10),
                                        Expanded(
                                            child: Text('Balance',
                                                style: Theme.of(context).textTheme.titleSmall, maxLines: 1)),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              for (final _totalAmount in transactionSort.totalAmounts)
                                                Text(
                                                  _totalAmount.getBalanceStr,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500,
                                                      color: Theme.of(context).primaryColor),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return const SizedBox(
                      height: 300,
                      child: Center(
                        child: Text('Loading..', style: TextStyle(fontSize: 13, color: Colors.black45)),
                      ),
                    );
                  });
            }
            return const NoDataWidget();
          }
          return const SizedBox(
            height: 300,
            child: Center(
              child: Text('Loading..', style: TextStyle(fontSize: 13, color: Colors.black45)),
            ),
          );
        });
  }
}
