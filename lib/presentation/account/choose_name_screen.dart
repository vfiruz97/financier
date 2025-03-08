import '../../application/account/account_create/account_create_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseNameScreen extends StatelessWidget {
  const ChooseNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<AccountCreateBloc>().state;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
        child: Form(
          autovalidateMode: bloc.validateForm ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100,
                child: TextFormField(
                  initialValue: bloc.account.name.getOrElse(''),
                  onChanged: (value) {
                    context.read<AccountCreateBloc>().add(AccountCreateEvent.changeAccountName(value));
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Bank Card',
                    hintStyle: TextStyle(fontSize: 12),
                    labelText: 'Enter account name*',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (_) => bloc.account.name.value.fold(
                      (f) => f.maybeMap(
                          empty: (_) => 'Fill in the field',
                          hasIncorrectLength: (_) => 'Incorrect length',
                          orElse: () => 'Incorrect format'),
                      (_) => null),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 100,
                child: TextFormField(
                  initialValue: '0',
                  onChanged: (value) {
                    context.read<AccountCreateBloc>().add(AccountCreateEvent.changeBalance(double.parse(value)));
                  },
                  decoration: InputDecoration(
                    prefix: Text('${bloc.account.currencyId.code} ', style: Theme.of(context).textTheme.titleSmall),
                    labelText: 'Enter starter balance',
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [CurrencyInputFormatter()],
                  validator: (_) =>
                      bloc.account.balance.value.fold((f) => f.maybeMap(orElse: () => 'Incorrect format'), (_) => null),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    try {
      final value = int.tryParse(newValue.text);
      if (value == null) return oldValue;
      String newText = '$value';
      return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
    } catch (e) {
      return oldValue;
    }
  }
}
