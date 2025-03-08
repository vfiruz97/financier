import 'package:flutter/material.dart';

class NotificationSettings {
  final bool enabled;
  final TimeOfDay time;

  const NotificationSettings({this.enabled = true, required this.time});

  NotificationSettings copyWith({bool? enabled, TimeOfDay? time}) {
    return NotificationSettings(enabled: enabled ?? this.enabled, time: time ?? this.time);
  }

  @override
  String toString() {
    final hour = time.hour;
    final minute = time.minute;

    // {enabled|int}_{hour|int}_{minute|int}
    return '${enabled ? '1' : '0'}_${hour}_$minute';
  }

  factory NotificationSettings.fromString(String notificationSettingsStr) {
    // {enabled|int}_{hour|int}_{minute|int}_{condtion|int}
    final settings = notificationSettingsStr.split('_');
    final enabled = settings[0] == '1';

    final hour = int.parse(settings[1]);
    final minute = int.parse(settings[2]);
    final time = TimeOfDay(hour: hour, minute: minute);

    return NotificationSettings(enabled: enabled, time: time);
  }
}
