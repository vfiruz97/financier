import '../../../application/transaction/income_transaction_create/income_transaction_create_bloc.dart';
import '../../../injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'enter_balance_form.dart';
import 'view_transaction.dart';
import 'choose_account.dart';
import 'choose_category.dart';

class IncomeCreateFormScreen extends StatefulWidget {
  const IncomeCreateFormScreen({super.key});

  @override
  State<IncomeCreateFormScreen> createState() => _IncomeCreateFormScreenState();
}

class _IncomeCreateFormScreenState extends State<IncomeCreateFormScreen> {
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
      create: (context) => getIt<IncomeTransactionCreateBloc>(),
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
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ChooseAccount(onTap: () => _onChangePage(1)),
                EnterBalanceForm(onTap: () => _onChangePage(2), onBack: () => _onChangePage(0)),
                ChooseCategory(onTap: () => _onChangePage(3), onBack: () => _onChangePage(1)),
                const ViewTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
