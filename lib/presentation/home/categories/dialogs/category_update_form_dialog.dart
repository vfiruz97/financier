import '../../../../application/transaction_category/transaction_category_update/transaction_category_update_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryUpdateFormDialog extends StatelessWidget {
  const CategoryUpdateFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Edit category', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: BlocConsumer<TransactionCategoryUpdateBloc, TransactionCategoryUpdateState>(
        listenWhen: (p, c) => p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          final failureMessage = state.failureOrSuccessOption.fold(
              () => null,
              (either) => either.fold(
                    (f) => f.map(unexpected: (_) => 'Occured unxpected failure'),
                    (_) {
                      Navigator.pop(context);
                      return null;
                    },
                  ));
          if (failureMessage != null) {
            final snackBar = SnackBar(content: Text(failureMessage));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.validateForm ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 80,
                  child: TextFormField(
                    initialValue: state.transactionCategory.name.getOrElse(''),
                    onChanged: (value) {
                      BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                          .add(TransactionCategoryUpdateEvent.changeName(value));
                    },
                    autofocus: true,
                    decoration: const InputDecoration(
                        labelText: 'Category name:', labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                    keyboardType: TextInputType.text,
                    validator: (_) => state.transactionCategory.name.value.fold(
                        (f) => f.maybeMap(
                            empty: (_) => 'Fill in the field',
                            hasIncorrectLength: (_) => 'Incorrect length',
                            orElse: () => 'Incorrect format'),
                        (_) => null),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: state.deleteCategory,
                        onChanged: (_) {
                          BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                              .add(const TransactionCategoryUpdateEvent.toogleDeleteTransaction());
                        },
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text('Delete category', style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    BlocProvider.of<TransactionCategoryUpdateBloc>(context)
                        .add(const TransactionCategoryUpdateEvent.updateOrDelete());
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.pressed)) {
                          return Theme.of(context).colorScheme.primary.withOpacity(0.6);
                        }
                        return Theme.of(context).colorScheme.primary;
                      },
                    ),
                  ),
                  child: Text('SAVE', style: Theme.of(context).textTheme.titleSmall),
                ),
                if (state.submitting) ...[const SizedBox(height: 1), const LinearProgressIndicator()]
              ],
            ),
          );
        },
      ),
    );
  }
}
