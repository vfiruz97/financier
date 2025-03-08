import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'bodyies/expense_statistics_body.dart';
import 'bodyies/income_statistics_body.dart';
import 'bodyies/summary_statistics_body.dart';

class StatisticsTitle extends StatelessWidget {
  const StatisticsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Statistics');
  }
}

class StatisticsBody extends StatefulWidget {
  const StatisticsBody({super.key});

  @override
  State<StatisticsBody> createState() => _StatisticsBodyState();
}

class _StatisticsBodyState extends State<StatisticsBody> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late DateTime _firstDate;
  late DateTime _lastDate;

  @override
  initState() {
    _firstDate = DateTime.now().subtract(const Duration(days: 30));
    _lastDate = DateTime.now();
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                height: 50,
                decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  labelColor: Theme.of(context).colorScheme.primary,
                  tabs: [
                    Text(
                      'Expenses',
                      style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
                    ),
                    Text(
                      'Incomes',
                      style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
                    )
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 10, top: 80, right: 10),
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: ExpenseStatisticsBody(dateTimeRange: DateTimeRange(start: _firstDate, end: _lastDate)),
                  ),
                  SingleChildScrollView(
                    child: IncomeStatisticsBody(dateTimeRange: DateTimeRange(start: _firstDate, end: _lastDate)),
                  ),
                  SingleChildScrollView(
                    child: SummaryStatisticsBody(dateTimeRange: DateTimeRange(start: _firstDate, end: _lastDate)),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 0,
          right: 0,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: WhiteCardWidget(
              child: InkWell(
                onTap: () async {
                  final result = await showDateRangePicker(
                    context: context,
                    initialDateRange: DateTimeRange(start: _firstDate, end: _lastDate),
                    firstDate: DateTime(2020, 1),
                    lastDate: DateTime.now().add(const Duration(days: 736)),
                  );

                  if (result != null) {
                    setState(() {
                      _firstDate = result.start;
                      _lastDate = result.end;
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Interval',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5))),
                              child: Text(
                                '${DateFormat('d MMM y').format(_firstDate)} - ${DateFormat('d MMM y').format(_lastDate)}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(Icons.date_range_rounded, size: 28, color: Theme.of(context).colorScheme.primary),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
