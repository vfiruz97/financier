import '../../../application/transaction/transfer_transaction_create/transfer_transaction_create_bloc.dart';
import '../../../injection.dart';
import 'put_amount_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'enter_balance_form.dart';
import 'view_transaction.dart';
import 'choose_account_from.dart';
import 'choose_account_to.dart';

class TransferCreateFormScreen extends StatefulWidget {
  const TransferCreateFormScreen({super.key});

  @override
  State<TransferCreateFormScreen> createState() => _TransferCreateFormScreenState();
}

class _TransferCreateFormScreenState extends State<TransferCreateFormScreen> {
  final PageController controller = PageController(initialPage: 0);

  void _onChangePage(int page) {
    controller.jumpToPage(page);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TransferTransactionCreateBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          bottom: false,
          child: Container(
            color: Colors.blueGrey.shade100,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: _onChangePage,
              children: [
                ChooseAccountFrom(onTap: () => _onChangePage(1)),
                EnterBalanceForm(onTap: () => _onChangePage(2), onBack: () => _onChangePage(0)),
                ChooseAccountTo(
                  onTap: (bool saved) => saved ? _onChangePage(4) : _onChangePage(3),
                  onBack: () => _onChangePage(1),
                ),
                PutAmountInForm(onTap: () => _onChangePage(4), onBack: () => _onChangePage(2)),
                const ViewTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
