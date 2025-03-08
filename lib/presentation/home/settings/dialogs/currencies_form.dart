import '../../../../application/settings/settings_controller.dart';
import '../../../../domain/core/currency_list.dart';
import '../../../../injection.dart';
import 'package:flutter/material.dart';

class SettingsCurrenciesForm extends StatelessWidget {
  const SettingsCurrenciesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: AlertDialog(
            title: Row(
              children: [
                Expanded(child: Text('Your currencies', style: Theme.of(context).textTheme.titleSmall)),
                InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
              ],
            ),
            contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Choose a frequent usage currencies',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),

                /// [AnimatedBuilder] is using to rerender for
                /// updating settings.
                AnimatedBuilder(
                  animation: getIt<SettingsController>(),
                  builder: (context, _) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height - 300,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            for (int i = 0; i < currencies.length; i++)
                              InkWell(
                                onTap: () {
                                  List<int> frequentCurrencies = [];
                                  frequentCurrencies.addAll(getIt<SettingsController>().frequentCurrencies);
                                  if (frequentCurrencies.any((element) => element == i)) {
                                    frequentCurrencies.removeWhere((element) => element == i);
                                  } else {
                                    frequentCurrencies.add(i);
                                  }
                                  getIt<SettingsController>()
                                      .setFrequentCurrencies(List<int>.from(frequentCurrencies));
                                },
                                child: ListCurrencyItem(
                                  code: '${currencies[i]['a_code']}',
                                  currency: '${currencies[i]['currency']}',
                                  country: '${currencies[i]['country']}',
                                  bottomBorder: !(currencies.length - 1 == i),
                                  active: getIt<SettingsController>().frequentCurrencies.any((e) => e == i),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )
      ],
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
            Icon(Icons.check, size: 20, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16)
          ] else
            const SizedBox(width: 32),
          Text(code,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary)),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '$currency ',
                style: DefaultTextStyle.of(context)
                    .style
                    .copyWith(fontSize: 13, color: Theme.of(context).colorScheme.secondary),
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
