import '../../application/budget/budget_update/budget_update_bloc.dart';
import '../../application/ids/ids_bloc.dart';
import '../transactions/expense/dialog/confirm_dialog.dart';
import '../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetUpdateFormScreen extends StatelessWidget {
  const BudgetUpdateFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(children: [
          // App bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HomeAppBarWidget(title: 'Update Budget', actions: [
              InkWell(
                  onTap: () async {
                    // show the dialog
                    final bool? response = await ConfirmDialog.show(
                      context,
                      title: 'Confirm budget deletion',
                      message: 'All accounts, transactions, plans related to this budget'
                          ' will be deleted. After deletion, It cannot be restored!',
                      yesText: 'DELETE',
                      noText: 'CANCEL',
                    );

                    if (response != null && response) {
                      BlocProvider.of<BudgetUpdateBloc>(context).add(const BudgetUpdateEvent.delete());
                    }
                  },
                  child: Icon(Icons.delete_forever_outlined, size: 26, color: Theme.of(context).colorScheme.secondary)),
            ]),
          ),
          // Body
          Positioned(
            top: 60,
            bottom: 60,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              color: Colors.blueGrey.shade100,
              child: SingleChildScrollView(
                child: BlocConsumer<BudgetUpdateBloc, BudgetUpdateState>(
                  listenWhen: (p, c) => p.failureOrSuccessOption != c.failureOrSuccessOption,
                  listener: (context, state) {
                    final String? failureMesssage = state.failureOrSuccessOption.fold(
                      () => null,
                      (failureOrSuccess) => failureOrSuccess.fold(
                        (f) => f.map(unexpected: (_) => 'Unexpected error occured'),
                        (_) {
                          BlocProvider.of<IdsBloc>(context).add(const IdsEvent.refreshActiveBudgetId());
                          Navigator.pop(context);
                          return null;
                        },
                      ),
                    );
                    if (failureMesssage != null) {
                      final snackBar = SnackBar(content: Text(failureMesssage));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  builder: (context, state) {
                    return Form(
                      autovalidateMode: state.validateForm ? AutovalidateMode.always : AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 90,
                            child: TextFormField(
                              initialValue: state.budget.name.getOrElse(''),
                              onChanged: (value) {
                                context.read<BudgetUpdateBloc>().add(BudgetUpdateEvent.changeName(value));
                              },
                              autofocus: true,
                              decoration: const InputDecoration(
                                  labelText: 'Budget name', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                              keyboardType: TextInputType.text,
                              validator: (_) => state.budget.name.value.fold(
                                  (f) => f.maybeMap(
                                      empty: (_) => 'Fill in the field',
                                      hasIncorrectLength: (_) => 'Incorrect length',
                                      orElse: () => 'Incorrect format'),
                                  (_) => null),
                            ),
                          ),
                          const Text(
                            'Choose name for budget. You can leave it default. Otherwise you can use `Family budget`, `Business budget` etc.',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: state.budget.active,
                                onChanged: (_) {
                                  context.read<BudgetUpdateBloc>().add(const BudgetUpdateEvent.toggleActivity());
                                },
                              ),
                              Text(
                                'Activate',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 14),
                              )
                            ],
                          ),
                          const Text(
                            'Only one budget can be activated. If you activate this budget, you will turn off another one.',
                            style: TextStyle(fontSize: 13),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          // Bottom buttons
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: SizedBox(
                          height: 60,
                          child: Center(
                              child: Text('CANCEL',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Theme.of(context).colorScheme.secondary))),
                        ),
                      ),
                    ),
                  ),
                  Container(decoration: const BoxDecoration(border: Border(left: BorderSide(color: Colors.white)))),
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          BlocProvider.of<BudgetUpdateBloc>(context).add(const BudgetUpdateEvent.save());
                        },
                        child: SizedBox(
                          height: 60,
                          child: Center(
                              child: Text('UPDATE',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Theme.of(context).colorScheme.secondary))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
