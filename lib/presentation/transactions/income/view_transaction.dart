import '../../../application/transaction/income_transaction_create/income_transaction_create_bloc.dart';
import '../../../application/transaction/income_transaction_update/income_transaction_update_bloc.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
import '../expense/dialog/choose_category.dart';
import '../expense/dialog/enter_balance_dialog.dart';
import 'package:flutter/material.dart';

import '../../widgets/components/back_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ViewTransaction extends StatelessWidget {
  const ViewTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final transactionId = BlocProvider.of<IncomeTransactionCreateBloc>(context).state.transaction.id.getOrCrash();
    final transaction0 = BlocProvider.of<IncomeTransactionCreateBloc>(context).state.transaction;
    BlocProvider.of<IncomeTransactionUpdateBloc>(context)
        .add(IncomeTransactionUpdateEvent.assignTransaction(transaction0));

    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade100,
          child: Stack(
            children: [
              const Positioned(left: 0, top: 0, right: 0, child: BackAppBar(title: 'Transaction saved')),
              Positioned(
                left: 0,
                top: 60,
                right: 0,
                bottom: 60,
                child: SingleChildScrollView(
                  child: StreamBuilder<TransactionWithRelationship?>(
                      stream: getIt<TransactionsDao>().watchById(transactionId),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final transactionWR = snapshot.data;
                          if (transactionWR != null) {
                            final transaction = transactionWR.transaction;
                            final account = transactionWR.account;
                            final category = transactionWR.category;

                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text('Income', style: Theme.of(context).textTheme.titleSmall),
                                ),
                                ListTransactionItem(
                                  fieldName: 'Date and time',
                                  value: transaction.createdAtFormated,
                                  icon: Icons.date_range,
                                  rightIcon: Icons.mode_edit_outlined,
                                  onTap: () async {
                                    final DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: transaction.createdAt,
                                      firstDate: DateTime(2020, 1),
                                      lastDate: DateTime.now().add(const Duration(days: 736)),
                                    );
                                    if (pickedDate != null) {
                                      final TimeOfDay? pickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay(
                                          hour: transaction.createdAt.hour,
                                          minute: transaction.createdAt.minute,
                                        ),
                                      );
                                      final newCreatedAt = pickedDate.add(Duration(
                                        hours: pickedTime != null ? pickedTime.hour : 0,
                                        minutes: pickedTime != null ? pickedTime.minute : 0,
                                      ));
                                      BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                        ..add(IncomeTransactionUpdateEvent.changeCreatedAt(newCreatedAt))
                                        ..add(const IncomeTransactionUpdateEvent.update());
                                    }
                                  },
                                ),
                                ListTransactionItem(
                                  fieldName: 'Amount',
                                  value: '${account?.currencyId.code} ${transaction.balance.getOrCrash()}',
                                  icon: Icons.attach_money_outlined,
                                  rightIcon: Icons.chevron_right_sharp,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                        context: context,
                                        elevation: 8,
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        builder: (BuildContext context) {
                                          final balance = '${transaction.balance.getOrCrash()}';
                                          return EnterBalanceDialogTwo(
                                            initBalance:
                                                balance.endsWith('.0') ? balance.replaceAll('.0', '') : balance,
                                            currencyCode: account != null ? account.currencyId.code : 'Nan',
                                            onOk: (balance) {
                                              BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                                ..add(IncomeTransactionUpdateEvent.changeAmount(balance))
                                                ..add(const IncomeTransactionUpdateEvent.update());
                                            },
                                          );
                                        });
                                  },
                                ),
                                if (category != null)
                                  ListTransactionItem(
                                    fieldName: 'Category',
                                    value: category.name.getOrElse(''),
                                    icon: Icons.account_tree_outlined,
                                    rightIcon: Icons.chevron_right_sharp,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (context) => ChooseCategoryDialog(
                                          type: TransactionCategoryType.income,
                                          onSelect: (categoryId) {
                                            BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                              ..add(IncomeTransactionUpdateEvent.changeCategoryId(categoryId))
                                              ..add(const IncomeTransactionUpdateEvent.update());
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                Container(
                                  height: 100,
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextFormField(
                                    initialValue: transaction.description?.getOrElse(''),
                                    maxLength: 68,
                                    onChanged: (value) {
                                      BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                        ..add(IncomeTransactionUpdateEvent.changeDescription(value))
                                        ..add(const IncomeTransactionUpdateEvent.update());
                                    },
                                    decoration: InputDecoration(
                                      fillColor: Colors.transparent,
                                      labelText: 'Description (optional)',
                                      labelStyle: const TextStyle(
                                          color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                                      icon: Icon(Icons.description_outlined,
                                          color: Theme.of(context).colorScheme.secondary),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            );
                          }
                          return const Padding(
                              padding: EdgeInsets.all(48.0), child: Center(child: Text('Opps! No transaction (:-')));
                        }
                        return const Padding(
                            padding: EdgeInsets.all(48.0), child: Center(child: CircularProgressIndicator()));
                      }),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 58,
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: SizedBox(
                              height: 58,
                              child: Center(
                                child: Text('ADD ANOTHER TRANSACTION',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTransactionItem extends StatelessWidget {
  const ListTransactionItem({
    super.key,
    required this.fieldName,
    required this.value,
    required this.icon,
    required this.rightIcon,
    required this.onTap,
  });

  final String fieldName;
  final String value;
  final IconData icon;
  final IconData rightIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(fieldName,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 12)),
                const SizedBox(height: 4),
                Text(value,
                    maxLines: 1,
                    style:
                        Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
              ],
            ),
          ),
          InkWell(onTap: onTap, child: Icon(rightIcon, color: Theme.of(context).primaryColor)),
        ],
      ),
    );
  }
}
