import '../../../../application/settings/settings_controller.dart';
import '../../../../injection.dart';
import 'package:flutter/material.dart';

class SettingsTransactionsCountForm extends StatefulWidget {
  const SettingsTransactionsCountForm({super.key});

  @override
  State<SettingsTransactionsCountForm> createState() => _SettingsTransactionsCountFormState();
}

class _SettingsTransactionsCountFormState extends State<SettingsTransactionsCountForm> {
  late int _value;

  @override
  void initState() {
    _value = _value = getIt<SettingsController>().dashboardTransactionsCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Transactions count', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Change the number of transactions on the Dashboard.',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          DropdownButton<int>(
            hint: const Text('Transactions count', style: TextStyle(fontSize: 12)),
            isExpanded: true,
            value: _value,
            items: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                .map((i) => DropdownMenuItem(
                      value: i,
                      child: Text('$i'),
                    ))
                .toList(),
            onChanged: (value) {
              if (value == null) return;
              setState(() {
                _value = value;
              });
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () async {
              await getIt<SettingsController>().setDashboardTransactionsCount(_value);
              Navigator.pop(context);
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
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary)),
          ),
        ],
      ),
    );
  }
}
