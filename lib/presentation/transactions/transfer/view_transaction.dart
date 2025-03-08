import '../../../application/transaction/expense_transaction_update/expense_transaction_update_bloc.dart';
import '../../../application/transaction/income_transaction_update/income_transaction_update_bloc.dart';
import '../../../application/transaction/transfer_transaction_create/transfer_transaction_create_bloc.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
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
    final transferFrom = BlocProvider.of<TransferTransactionCreateBloc>(context).state.expenseTransaction;
    final transferFromId = transferFrom.id.getOrCrash();
    BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
        .add(ExpenseTransactionUpdateEvent.assignTransaction(transferFrom));

    final transferTo = BlocProvider.of<TransferTransactionCreateBloc>(context).state.incomeTransaction;
    final transferToId = transferTo.id.getOrCrash();
    BlocProvider.of<IncomeTransactionUpdateBloc>(context)
        .add(IncomeTransactionUpdateEvent.assignTransaction(transferTo));

    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade100,
          child: Stack(
            children: [
              const Positioned(left: 0, top: 0, right: 0, child: BackAppBar(title: 'Transfer saved')),
              Positioned(
                left: 0,
                top: 60,
                right: 0,
                bottom: 60,
                child: SingleChildScrollView(
                  child: StreamBuilder<TransactionWithRelationship?>(
                      stream: getIt<TransactionsDao>().watchById(transferFromId),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final tTransferFromWR = snapshot.data;
                          if (tTransferFromWR != null) {
                            final ttFrom = tTransferFromWR.transaction;
                            final ttFromAccount = tTransferFromWR.account;

                            return StreamBuilder<TransactionWithRelationship?>(
                                stream: getIt<TransactionsDao>().watchById(transferToId),
                                builder: (context, snapshotT) {
                                  if (snapshotT.hasData) {
                                    final tTransferToWR = snapshotT.data;
                                    if (tTransferToWR != null) {
                                      final ttTo = tTransferToWR.transaction;
                                      final ttToAccount = tTransferToWR.account;

                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text('Transfer between accounts',
                                                style: Theme.of(context).textTheme.titleSmall),
                                          ),
                                          ListTransactionItem(
                                            fieldName: 'Date and time',
                                            value: ttFrom.createdAtFormated,
                                            icon: Icons.date_range,
                                            rightIcon: Icons.mode_edit_outlined,
                                            onTap: () async {
                                              final DateTime? pickedDate = await showDatePicker(
                                                context: context,
                                                initialDate: ttFrom.createdAt,
                                                firstDate: DateTime(2020, 1),
                                                lastDate: DateTime.now().add(const Duration(days: 736)),
                                              );
                                              if (pickedDate != null) {
                                                final TimeOfDay? pickedTime = await showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay(
                                                    hour: ttFrom.createdAt.hour,
                                                    minute: ttFrom.createdAt.minute,
                                                  ),
                                                );
                                                final newCreatedAt = pickedDate.add(Duration(
                                                  hours: pickedTime != null ? pickedTime.hour : 0,
                                                  minutes: pickedTime != null ? pickedTime.minute : 0,
                                                ));
                                                BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
                                                  ..add(ExpenseTransactionUpdateEvent.changeCreatedAt(newCreatedAt))
                                                  ..add(const ExpenseTransactionUpdateEvent.update());
                                                BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                                  ..add(IncomeTransactionUpdateEvent.changeCreatedAt(newCreatedAt))
                                                  ..add(const IncomeTransactionUpdateEvent.update());
                                              }
                                            },
                                          ),
                                          ListTransactionItem(
                                            fieldName: 'Transfer from',
                                            value: ttFromAccount != null ? ttFromAccount.name.getOrElse('') : 'Opps',
                                            icon: ttFromAccount != null ? ttFromAccount.iconAvatar.icon : Icons.shop,
                                            canEdit: false,
                                            rightIcon: Icons.mode_edit_outlined,
                                            onTap: null,
                                          ),
                                          ListTransactionItem(
                                            fieldName: 'Amount from ${ttFromAccount?.name.getOrElse('')}',
                                            value: '${ttFromAccount?.currencyId.code} ${ttFrom.balance.getOrElse(0)}',
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
                                                    final balance = '${ttFrom.balance.getOrCrash()}';
                                                    return EnterBalanceDialogTwo(
                                                      initBalance: balance.endsWith('.0')
                                                          ? balance.replaceAll('.0', '')
                                                          : balance,
                                                      currencyCode:
                                                          ttFromAccount != null ? ttFromAccount.currencyId.code : 'Nan',
                                                      onOk: (balance) {
                                                        BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
                                                          ..add(ExpenseTransactionUpdateEvent.changeAmount(balance))
                                                          ..add(const ExpenseTransactionUpdateEvent.update());
                                                      },
                                                    );
                                                  });
                                            },
                                          ),
                                          ListTransactionItem(
                                            fieldName: 'Transfer to',
                                            value: ttToAccount != null ? ttToAccount.name.getOrElse('') : 'Opps',
                                            icon: ttToAccount != null ? ttToAccount.iconAvatar.icon : Icons.home,
                                            canEdit: false,
                                            rightIcon: Icons.mode_edit_outlined,
                                            onTap: null,
                                          ),
                                          ListTransactionItem(
                                            fieldName: 'Amount to ${ttToAccount?.name.getOrElse('')}',
                                            value: '${ttToAccount?.currencyId.code} ${ttTo.balance.getOrElse(0)}',
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
                                                    final balance = '${ttTo.balance.getOrCrash()}';
                                                    return EnterBalanceDialogTwo(
                                                      initBalance: balance.endsWith('.0')
                                                          ? balance.replaceAll('.0', '')
                                                          : balance,
                                                      currencyCode:
                                                          ttToAccount != null ? ttToAccount.currencyId.code : 'Nan',
                                                      onOk: (balance) {
                                                        BlocProvider.of<IncomeTransactionUpdateBloc>(context)
                                                          ..add(IncomeTransactionUpdateEvent.changeAmount(balance))
                                                          ..add(const IncomeTransactionUpdateEvent.update());
                                                      },
                                                    );
                                                  });
                                            },
                                          ),
                                          Container(
                                            height: 100,
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                                            child: TextFormField(
                                              initialValue: ttFrom.description?.getOrElse(''),
                                              maxLength: 68,
                                              onChanged: (value) {
                                                BlocProvider.of<ExpenseTransactionUpdateBloc>(context)
                                                  ..add(ExpenseTransactionUpdateEvent.changeDescription(value))
                                                  ..add(const ExpenseTransactionUpdateEvent.update());
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
                                        padding: EdgeInsets.all(48.0),
                                        child: Center(child: Text('Opps! No transaction (:-')));
                                  }
                                  return const Padding(
                                      padding: EdgeInsets.all(48.0), child: Center(child: CircularProgressIndicator()));
                                });
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
    this.canEdit = true,
  });

  final String fieldName;
  final String value;
  final IconData icon;
  final IconData rightIcon;
  final Function()? onTap;
  final bool canEdit;

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
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.w500,
                        fontSize: 12)),
                const SizedBox(height: 4),
                Text(value,
                    maxLines: 1,
                    style:
                        Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
              ],
            ),
          ),
          if (canEdit)
            InkWell(
                onTap: () => onTap != null ? onTap!() : null,
                child: Icon(rightIcon, color: Theme.of(context).primaryColor)),
        ],
      ),
    );
  }
}
