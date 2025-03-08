import '../../../../application/transaction_category/transaction_category_create/transaction_category_create_bloc.dart';
import '../../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../../injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCreateFormDialog extends StatelessWidget {
  final TransactionCategoryType transactionCategoryType;
  const CategoryCreateFormDialog({super.key, required this.transactionCategoryType});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Create new Category', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: BlocProvider(
        create: (context) => getIt<TransactionCategoryCreateBloc>(),
        child: BlocConsumer<TransactionCategoryCreateBloc, TransactionCategoryCreateState>(
          listenWhen: (p, c) => p.failureOrSuccessOption != c.failureOrSuccessOption,
          listener: (context, state) {
            final failureMesssage = state.failureOrSuccessOption.fold(
                () => null,
                (either) => either.fold(
                      (f) => f.map(unexpected: (_) => 'Occured unexpected error'),
                      (r) {
                        Navigator.pop(context);
                        return null;
                      },
                    ));
            if (failureMesssage != null) {
              final snackBar = SnackBar(content: Text(failureMesssage));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            context
                .read<TransactionCategoryCreateBloc>()
                .add(TransactionCategoryCreateEvent.changeType(transactionCategoryType));
            return Form(
              autovalidateMode: state.validateForm ? AutovalidateMode.always : AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    onChanged: (value) {
                      context
                          .read<TransactionCategoryCreateBloc>()
                          .add(TransactionCategoryCreateEvent.changeName(value));
                    },
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Shoping',
                      hintStyle: TextStyle(fontSize: 12),
                      labelText: 'Category name:',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (_) => state.transactionCategory.name.value.fold(
                        (f) => f.maybeMap(
                            empty: (_) => 'Fill in the field',
                            hasIncorrectLength: (_) => 'Incorrect length',
                            orElse: () => 'Incorrect format'),
                        (_) => null),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      context.read<TransactionCategoryCreateBloc>().add(const TransactionCategoryCreateEvent.submit());
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
                    child: Text('SAVE',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
                  ),
                  if (state.submitting) ...[const SizedBox(height: 1), const LinearProgressIndicator()]
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
