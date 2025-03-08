import '../../../application/transaction/expense_transaction_create/expense_transaction_create_bloc.dart';
import 'package:flutter/material.dart';

import '../../widgets/components/back_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterBalanceForm extends StatefulWidget {
  const EnterBalanceForm({super.key, required this.onTap, required this.onBack});

  final Function() onTap;
  final Function()? onBack;

  @override
  State<EnterBalanceForm> createState() => _EnterBalanceFormState();
}

class _EnterBalanceFormState extends State<EnterBalanceForm> {
  late String currencyCode;
  String amount = '0';

  @override
  void initState() {
    currencyCode = context.read<ExpenseTransactionCreateBloc>().state.account.currencyId.code;
    final balance = context.read<ExpenseTransactionCreateBloc>().state.transaction.balance.getOrElse(0);
    amount = balance > 0
        ? '$balance'.endsWith('.0')
            ? '$balance'.replaceFirst('.0', '')
            : '$balance'
        : '0';
    super.initState();
  }

  void _onKeyboardType(String value) {
    if (amount.length > 11) return;
    if (amount.endsWith('.') && value == '.') return;
    setState(() {
      if (amount == '0' && value != '.') {
        amount = value;
      } else {
        amount = '$amount$value';
      }
    });
  }

  void _backspace() {
    final length = amount.length;
    setState(() {
      if (amount == '0') return;
      if (length == 1) {
        amount = '0';
      } else if (length > 1) {
        amount = amount.substring(0, length - 1);
        if (amount.endsWith('.')) {
          amount = amount.substring(0, length - 2);
          if (amount.isEmpty) {
            amount = '0';
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: BackAppBar(title: 'Enter amount', onBack: widget.onBack != null ? () => widget.onBack!() : null)),
          Positioned(
            left: 0,
            top: 60,
            right: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              decoration: const BoxDecoration(
                                  border: Border(right: BorderSide(color: Colors.grey, width: 0.4))),
                              child: RichText(
                                text: TextSpan(
                                  text: '$currencyCode ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(fontSize: 24, color: Theme.of(context).colorScheme.primary),
                                  children: [TextSpan(text: amount)],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                BlocProvider.of<ExpenseTransactionCreateBloc>(context)
                                    .add(ExpenseTransactionCreateEvent.fixBalance(double.parse(amount)));
                                widget.onTap();
                              },
                              child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20), child: Icon(Icons.check)),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      CustomKeyboard(onKeyboardType: _onKeyboardType, onBackspaceTap: _backspace),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({super.key, required this.onKeyboardType, required this.onBackspaceTap});

  final ValueChanged<String> onKeyboardType;
  final Function onBackspaceTap;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            KeyboardItem(title: '1', onTap: () => onKeyboardType('1')),
            KeyboardItem(title: '2', onTap: () => onKeyboardType('2')),
            KeyboardItem(title: '3', onTap: () => onKeyboardType('3')),
          ],
        ),
        TableRow(
          children: [
            KeyboardItem(title: '4', onTap: () => onKeyboardType('4')),
            KeyboardItem(title: '5', onTap: () => onKeyboardType('5')),
            KeyboardItem(title: '6', onTap: () => onKeyboardType('6')),
          ],
        ),
        TableRow(
          children: [
            KeyboardItem(title: '7', onTap: () => onKeyboardType('7')),
            KeyboardItem(title: '8', onTap: () => onKeyboardType('8')),
            KeyboardItem(title: '9', onTap: () => onKeyboardType('9')),
          ],
        ),
        TableRow(
          children: [
            KeyboardItem(title: '0', onTap: () => onKeyboardType('0')),
            KeyboardItem(title: '.', onTap: () => onKeyboardType('.')),
            InkWell(
              onTap: () => onBackspaceTap(),
              child: const SizedBox(height: 75, child: Center(child: Icon(Icons.backspace))),
            )
          ],
        ),
      ],
    );
  }
}

class KeyboardItem extends StatelessWidget {
  const KeyboardItem({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 75,
        child: Center(
          child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
