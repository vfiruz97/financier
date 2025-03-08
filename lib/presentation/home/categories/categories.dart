import 'package:dartz/dartz.dart' hide State;
import '../../../application/transaction_category/transaction_category_update/transaction_category_update_bloc.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../infrastructure/database/daos/transaction_category_dao.dart';
import 'category_empty_screen.dart';
import 'dialogs/category_update_form_dialog.dart';
import '../../widgets/components/buttons/primary_button.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import 'dialogs/category_create_form_dialog.dart';

class CategoriesTitle extends StatelessWidget {
  const CategoriesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Categories');
  }
}

class CategoriesBody extends StatefulWidget {
  const CategoriesBody({super.key});

  @override
  State<CategoriesBody> createState() => _CategoriesBodyState();
}

class _CategoriesBodyState extends State<CategoriesBody> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
              child: TabBar(
                controller: _tabController,
                labelColor: Theme.of(context).primaryColor,
                indicatorColor: Theme.of(context).colorScheme.primaryContainer,
                tabs: [
                  Text(
                    'Expenses',
                    style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                  Text(
                    'Incomes',
                    style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              ExpensePage(),
              IncomePage(),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          height: 45,
          child: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) => CategoryCreateFormDialog(
                      transactionCategoryType: _tabController.index == 0
                          ? TransactionCategoryType.expense
                          : TransactionCategoryType.income));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: PrimaryButton(title: 'NEW CATEGORY'),
            ),
          ),
        ),
      ],
    );
  }
}

class ExpensePage extends StatelessWidget {
  const ExpensePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TransactionCategory>>(
        stream: getIt<TransactionCategoriesDao>().watchAllByType(TransactionCategoryType.expense.index),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;
            if (data != null && data.isNotEmpty) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (var i = 0; i < data.length; i++)
                      InkWell(
                        onTap: () {
                          BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                            ..add(const TransactionCategoryUpdateEvent.initial())
                            ..add(TransactionCategoryUpdateEvent.assignTransactionCategory(data[i]));
                          showDialog(context: context, builder: (_) => const CategoryUpdateFormDialog());
                        },
                        child: ListCategoryItem(
                          name: data[i].name.getOrCrash(),
                          first: i < data.length && i == 0,
                          last: i == data.length - 1,
                          bottomBorder: !(i == data.length - 1),
                          onTapDown: () {
                            BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                                .add(TransactionCategoryUpdateEvent.updateOrder(ilist(data), data[i], false));
                          },
                          onTapUp: () {
                            BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                                .add(TransactionCategoryUpdateEvent.updateOrder(ilist(data), data[i], true));
                          },
                        ),
                      ),
                  ],
                ),
              );
            }
            return const CategoryEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

class IncomePage extends StatelessWidget {
  const IncomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TransactionCategory>>(
        stream: getIt<TransactionCategoriesDao>().watchAllByType(TransactionCategoryType.income.index),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;
            if (data != null && data.isNotEmpty) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (var i = 0; i < data.length; i++)
                      InkWell(
                        onTap: () {
                          BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                            ..add(const TransactionCategoryUpdateEvent.initial())
                            ..add(TransactionCategoryUpdateEvent.assignTransactionCategory(data[i]));
                          showDialog(context: context, builder: (_) => const CategoryUpdateFormDialog());
                        },
                        child: ListCategoryItem(
                          name: data[i].name.getOrCrash(),
                          first: i < data.length && i == 0,
                          last: i == data.length - 1,
                          bottomBorder: !(i == data.length - 1),
                          onTapDown: () {
                            BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                                .add(TransactionCategoryUpdateEvent.updateOrder(ilist(data), data[i], false));
                          },
                          onTapUp: () {
                            BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                                .add(TransactionCategoryUpdateEvent.updateOrder(ilist(data), data[i], true));
                          },
                        ),
                      ),
                  ],
                ),
              );
            }
            return const CategoryEmptyScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem(
      {super.key,
      required this.name,
      this.bottomBorder = true,
      this.first = false,
      this.last = false,
      this.onTapUp,
      this.onTapDown});

  final String name;
  final bool bottomBorder;
  final bool last;
  final bool first;
  final Function? onTapUp;
  final Function? onTapDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          Expanded(child: Text(name, style: Theme.of(context).textTheme.titleSmall, overflow: TextOverflow.ellipsis)),
          if (!first) ...[
            const SizedBox(width: 15),
            InkWell(
                onTap: () {
                  if (onTapUp != null) {
                    onTapUp!();
                  }
                },
                child: Icon(Icons.arrow_upward, color: Theme.of(context).colorScheme.primary)),
          ],
          if (!last) ...[
            const SizedBox(width: 15),
            InkWell(
                onTap: () {
                  if (onTapDown != null) {
                    onTapDown!();
                  }
                },
                child: Icon(Icons.arrow_downward, color: Theme.of(context).colorScheme.primary)),
          ] else ...[
            const SizedBox(width: 38)
          ]
        ],
      ),
    );
  }
}
