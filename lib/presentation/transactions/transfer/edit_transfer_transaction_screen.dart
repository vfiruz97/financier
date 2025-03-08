import '../../../application/transaction/transfer_transaction_update/transfer_transaction_update_bloc.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../../infrastructure/database/daos/transaction_dao.dart';
import '../expense/dialog/confirm_dialog.dart';
import '../expense/dialog/enter_balance_dialog.dart';
import '../../widgets/components/back_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class EditTransferTransactionScreen extends StatelessWidget {
  const EditTransferTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionId = context.read<TransferTransactionUpdateBloc>().state.transaction.id.getOrCrash();

    return StreamBuilder<TransactionWithRelationship?>(
        stream: getIt<TransactionsDao>().watchById(transactionId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final transactionWR = snapshot.data;
            if (transactionWR != null) {
              final transaction = transactionWR.transaction;
              final account = transactionWR.account;

              return Scaffold(
                backgroundColor: Theme.of(context).primaryColor,
                body: SafeArea(
                  bottom: false,
                  child: Container(
                    color: Colors.blueGrey.shade100,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: BackAppBar(
                            title: 'Edit Transaction',
                            actions: [
                              InkWell(
                                onTap: () async {
                                  // show the dialog
                                  final bool? response = await ConfirmDialog.show(
                                    context,
                                    title: 'Are you sure you want to delete this transaction?',
                                    message: 'After deletion, it cannot be restored!',
                                    yesText: 'DELETE',
                                    noText: 'CANCEL',
                                  );

                                  if (response != null && response) {
                                    BlocProvider.of<TransferTransactionUpdateBloc>(context)
                                        .add(const TransferTransactionUpdateEvent.delete());
                                    Navigator.pop(context);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(
                                    Icons.delete_forever_outlined,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          bottom: 0,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child:
                                      Text('Transfer between accounts', style: Theme.of(context).textTheme.titleSmall),
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
                                        BlocProvider.of<TransferTransactionUpdateBloc>(context)
                                          ..add(TransferTransactionUpdateEvent.changeCreatedAt(newCreatedAt))
                                          ..add(const TransferTransactionUpdateEvent.update());
                                      }
                                    }),
                                ListTransactionItem(
                                  fieldName: transaction.type == TransactionType.transferFrom
                                      ? 'Transfer from'
                                      : 'Transfer to',
                                  value: '${account?.name.getOrElse('')}',
                                  icon: Icons.shopping_bag_outlined,
                                  rightIcon: Icons.mode_edit_outlined,
                                  showRigthIcon: false,
                                  onTap: () {},
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
                                              BlocProvider.of<TransferTransactionUpdateBloc>(context)
                                                ..add(TransferTransactionUpdateEvent.changeAmount(balance))
                                                ..add(const TransferTransactionUpdateEvent.update());
                                            },
                                          );
                                        });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: TextFormField(
                                    initialValue: transaction.description?.getOrElse(''),
                                    maxLines: 5,
                                    minLines: 1,
                                    maxLength: 68,
                                    onChanged: (value) {
                                      BlocProvider.of<TransferTransactionUpdateBloc>(context)
                                        ..add(TransferTransactionUpdateEvent.changeDescription(value))
                                        ..add(const TransferTransactionUpdateEvent.update());
                                    },
                                    style: const TextStyle(fontSize: 14, color: Colors.black87),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return const Padding(padding: EdgeInsets.all(48.0), child: Center(child: Text('Opps! No transaction (:-')));
          }
          return const Padding(padding: EdgeInsets.all(48.0), child: Center(child: CircularProgressIndicator()));
        });
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
    this.showRigthIcon = true,
  });

  final String fieldName;
  final String value;
  final IconData icon;
  final bool showRigthIcon;
  final IconData rightIcon;
  final Function onTap;

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
          if (showRigthIcon)
            InkWell(onTap: () => onTap(), child: Icon(rightIcon, color: Theme.of(context).primaryColor)),
        ],
      ),
    );
  }
}
