import '../../../../application/notification/notification_service.dart';
import '../../../../application/settings/settings_controller.dart';
import '../../../../injection.dart';
import 'package:flutter/material.dart';

class NotificationEnableForm extends StatefulWidget {
  const NotificationEnableForm({super.key});

  @override
  State<NotificationEnableForm> createState() => _NotificationEnableFormState();
}

class _NotificationEnableFormState extends State<NotificationEnableForm> {
  late bool _value;

  @override
  void initState() {
    _value = getIt<SettingsController>().notificationSettings.enabled;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text('Notification', style: Theme.of(context).textTheme.titleSmall)),
          InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.close, size: 30)),
        ],
      ),
      contentPadding: const EdgeInsets.only(left: 24, top: 6, right: 24, bottom: 8),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Enable notification to remain yourself to write down transactions.',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          DropdownButton<bool>(
            hint: const Text('Notification', style: TextStyle(fontSize: 12)),
            isExpanded: true,
            value: _value,
            items: [true, false]
                .map((i) => DropdownMenuItem(
                      value: i,
                      child: Text(i ? 'on' : 'off'),
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
              final notificationSettings = getIt<SettingsController>().notificationSettings.copyWith(enabled: _value);
              await getIt<SettingsController>().setNotificationSettings(notificationSettings);
              await getIt<NotificationService>().sheduleNotification(notificationSettings);
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
