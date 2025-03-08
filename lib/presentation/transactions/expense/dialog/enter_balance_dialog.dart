import 'package:flutter/material.dart';

class EnterBalanceDialogTwo extends StatefulWidget {
  const EnterBalanceDialogTwo({
    super.key,
    this.initBalance = '0',
    required this.currencyCode,
    required this.onOk,
  });

  final String initBalance;
  final String currencyCode;
  final Function(double amount) onOk;

  @override
  State<EnterBalanceDialogTwo> createState() => _EnterBalanceFormState();
}

class _EnterBalanceFormState extends State<EnterBalanceDialogTwo> {
  late String currencyCode;
  late String amount;

  @override
  void initState() {
    currencyCode = widget.currencyCode;
    amount = widget.initBalance;
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
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Row(children: []),
                ),
              ),
              Container(
                color: Colors.blueGrey.shade100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                            decoration:
                                const BoxDecoration(border: Border(right: BorderSide(color: Colors.grey, width: 0.4))),
                            child: RichText(
                              text: TextSpan(
                                text: '$currencyCode ',
                                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      fontSize: 26,
                                      color: Theme.of(context).colorScheme.primaryContainer,
                                    ),
                                children: [TextSpan(text: amount)],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            widget.onOk(double.parse(amount));
                            Navigator.pop(context);
                          },
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20), child: Icon(Icons.check, size: 34)),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.blueGrey.shade50,
                      child: Column(
                        children: [
                          const SizedBox(height: 6),
                          CustomKeyboard(onKeyboardType: _onKeyboardType, onBackspaceTap: _backspace),
                          const SizedBox(height: 8),
                          SizedBox(height: MediaQuery.of(context).padding.bottom),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
