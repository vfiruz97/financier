import '../../../../application/ids/ids_bloc.dart';
import '../../../../domain/core/currency_list.dart';
import '../../../../domain/financier/transaction/transaction.dart';
import '../../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../../infrastructure/database/daos/transaction_dao.dart';
import '../../../../infrastructure/database/database.dart';
import '../../../../injection.dart';
import 'no_data_widget.dart';
import '../../../view_model/statistics_expense.dart';
import '../../../widgets/components/white_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';

class ExpenseStatisticsBody extends StatefulWidget {
  const ExpenseStatisticsBody({
    super.key,
    required this.dateTimeRange,
  });

  final DateTimeRange dateTimeRange;

  @override
  State<ExpenseStatisticsBody> createState() => _ExpenseStatisticsBodyState();
}

class _ExpenseStatisticsBodyState extends State<ExpenseStatisticsBody> {
  int _currencyId = 0;
  List<int> _currencyIds = [];
  List<Account> _activeAccounts = [];

  final colorList = const <Color>[
    Color(0xfffdcb6e),
    Color(0xff0984e3),
    Color(0xfffd79a8),
    Color(0xffe17055),
    Color(0xff6c5ce7),
  ];

  int key = 0;

  @override
  void initState() {
    final accounts = context.read<IdsBloc>().state.accounts;

    if (accounts != null) {
      _activeAccounts = accounts;
    }

    if (_activeAccounts.isNotEmpty) {
      /// Get unique currency of accounts
      _currencyIds = _activeAccounts.map((account) => account.currencyId).toSet().toList();
      _currencyId = _currencyIds.first;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Filter accounts by currency
    final accountIdsFilter =
        _activeAccounts.where((account) => account.currencyId == _currencyId).map((account) => account.id).toList();

    if (_activeAccounts.isEmpty || _currencyIds.isEmpty || accountIdsFilter.isEmpty) {
      return const NoDataWidget();
    }

    return Column(
      children: [
        WhiteCardWidget(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                if (_currencyIds.length > 1)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        child: DropdownButton<int>(
                          isExpanded: true,
                          value: _currencyId,
                          items: _currencyIds
                              .map((id) => DropdownMenuItem(
                                    value: id,
                                    child: Text(currencies[id]['a_code']!),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() => _currencyId = value);
                          },
                        ),
                      )
                    ],
                  ),
                // Chart
                StreamBuilder<List<TransactionWithRelationship>>(
                  stream: getIt<TransactionsDao>().watchAllWhereAccountIdInAndDateBetweenAndType(
                    accountIdsFilter,
                    startDate: widget.dateTimeRange.start,
                    endDate: widget.dateTimeRange.end,
                    type: TransactionCategoryType.expense.index,
                  ),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final transactionWRs = snapshot.data;
                      if (transactionWRs != null && transactionWRs.isNotEmpty) {
                        final categoryModel = _countBalanceByCategory(
                          currencyId: _currencyId,
                          transactionWRs: transactionWRs,
                        );

                        if (categoryModel.isEmpty) {
                          return const _NoData(message: 'No data to display');
                        }

                        final dataMap = categoryModel.mapData;

                        int i = 0;
                        late final List<Widget> tableRow = [];
                        dataMap.forEach((categoryName, totalBalance) {
                          tableRow.add(
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                            backgroundColor: colorList[colorList.length > i ? i : 0], radius: 5),
                                        const SizedBox(width: 10),
                                        Text(categoryName, style: const TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${currencies[_currencyId]['a_code']} $totalBalance  ${totalBalance * 100 ~/ categoryModel.totalBalance}%',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                          if (colorList.length > i) {
                            i++;
                          } else {
                            // it is 1 but not 0 because in above statement assigned 0 next coming 1
                            i = 1;
                          }
                        });

                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 32),
                                  child: PieChart(
                                    key: ValueKey(key),
                                    dataMap: dataMap,
                                    animationDuration: const Duration(milliseconds: 800),
                                    chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
                                        ? 300
                                        : MediaQuery.of(context).size.width / 3.2,
                                    colorList: colorList,
                                    chartType: ChartType.ring,
                                    centerText: '${currencies[_currencyId]['a_code']} ${categoryModel.totalBalance}',
                                    legendOptions: const LegendOptions(showLegends: false),
                                    chartValuesOptions: const ChartValuesOptions(showChartValuesOutside: true),
                                    ringStrokeWidth: 28,
                                  ),
                                ),
                              ],
                            ),
                            Column(children: tableRow + [const SizedBox(height: 20)]),
                          ],
                        );
                      }
                      return const _NoData(message: 'No data to display');
                    }
                    return const _NoData(message: 'Loading..');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TransactionExpenseByCategory _countBalanceByCategory({
    required List<TransactionWithRelationship> transactionWRs,
    required int currencyId,
  }) {
    final model = TransactionExpenseByCategory.withCurrencyId(currencyId);
    for (final _tWR in transactionWRs) {
      model.addTransactionWithR(_tWR);
    }
    return model;
  }
}

class _NoData extends StatelessWidget {
  const _NoData({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Text(message, style: const TextStyle(fontSize: 13, color: Colors.black45)),
      ),
    );
  }
}
