import 'domain/settings/notification_setting.dart';
import 'package:flutter/material.dart';

class Env {
  static const appName = 'Financier';
  static const appVersion = 1.0;

  // Settings
  static const int dashboardTransactionsCount = 6;
  static const int dashboardAccountsCount = 3;
  static const List<int> defaultFrequentUsageCurrencies = [4, 62, 198, 164]; // USD, EUR, GBP, RUB
  static const NotificationSettings defaultNotificationSettings = NotificationSettings(
    enabled: true,
    time: TimeOfDay(hour: 18, minute: 30),
  );

  static const String feedbackUrl = 'https://ittihod.tj/financier/feedback';
}
