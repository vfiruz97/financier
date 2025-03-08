import '../../application/account/account_create/account_create_bloc.dart';
import '../../application/settings/settings_controller.dart';
import '../../injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/core/currency_list.dart';

class ChooseCurrencyScreen extends StatelessWidget {
  const ChooseCurrencyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currencyId = context.watch<AccountCreateBloc>().state.account.currencyId.getOrCrash();
    final frequentCurrencies = getIt<SettingsController>().frequentCurrencies;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (frequentCurrencies.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Frequently usage',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14),
                  ),
                ),
                for (final _i in frequentCurrencies)
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<AccountCreateBloc>(context).add(AccountCreateEvent.selectCurrency(_i));
                      },
                      child: ListCurrencyItem(
                        code: '${currencies[_i]['a_code']}',
                        currency: '${currencies[_i]['currency']}',
                        country: '${currencies[_i]['country']}',
                        bottomBorder: !(currencies.length - 1 == _i),
                        active: _i == currencyId,
                      ),
                    ),
                  ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'All currencies',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14),
            ),
          ),
          for (int i = 0; i < currencies.length; i++)
            InkWell(
              onTap: () {
                BlocProvider.of<AccountCreateBloc>(context).add(AccountCreateEvent.selectCurrency(i));
              },
              child: ListCurrencyItem(
                code: '${currencies[i]['a_code']}',
                currency: '${currencies[i]['currency']}',
                country: '${currencies[i]['country']}',
                bottomBorder: !(currencies.length - 1 == i),
                active: i == currencyId,
              ),
            ),
        ],
      ),
    );
  }
}

class ListCurrencyItem extends StatelessWidget {
  const ListCurrencyItem(
      {super.key,
      required this.code,
      required this.currency,
      required this.country,
      this.bottomBorder = true,
      this.active = false});

  final String code;
  final String currency;
  final String country;
  final bool bottomBorder;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: bottomBorder ? const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))) : null,
      child: Row(
        children: [
          if (active) ...[
            Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 20)
          ] else
            const SizedBox(width: 40),
          Text(code,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '$currency ',
                style: DefaultTextStyle.of(context).style.copyWith(color: Theme.of(context).colorScheme.secondary),
                children: [
                  TextSpan(text: country, style: const TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
