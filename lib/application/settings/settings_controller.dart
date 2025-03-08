import '../../domain/settings/notification_setting.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/settings/i_settings.dart';
import '../../env.dart';

abstract class ISettingsController {
  Future<void> getLoadedSettings();
  Future<void> setDashboardTransactionsCount(int value);
  Future<void> setDashboardAccountsCount(int value);
  Future<void> setFrequentCurrencies(List<int> value);
  Future<void> setNotificationSettings(NotificationSettings value);
}

@singleton
class SettingsController with ChangeNotifier implements ISettingsController {
  final ISettingsRepository settingsRepository;

  SettingsController({
    required this.settingsRepository,
  });

  int dashboardTransactionsCount = Env.dashboardTransactionsCount;
  int dashboardAccountsCount = Env.dashboardAccountsCount;
  List<int> frequentCurrencies = Env.defaultFrequentUsageCurrencies;
  NotificationSettings notificationSettings = Env.defaultNotificationSettings;

  @override
  Future<void> getLoadedSettings() async {
    final dashTransactionsCount = settingsRepository.getDashboardTransactionsCount();
    if (dashTransactionsCount != null) {
      dashboardTransactionsCount = dashTransactionsCount;
    }

    final dashAccountsCount = settingsRepository.getDashboardAccountsCount();
    if (dashAccountsCount != null) {
      dashboardAccountsCount = dashAccountsCount;
    }

    final freqCurrencies = settingsRepository.getFrequentCurrencies();
    if (freqCurrencies != null) {
      frequentCurrencies = freqCurrencies;
    }

    final notifSettings = settingsRepository.getNotificationSetting();
    if (notifSettings != null) {
      notificationSettings = notifSettings;
    }
  }

  @override
  Future<void> setDashboardAccountsCount(int value) async {
    dashboardAccountsCount = value;
    notifyListeners();

    settingsRepository.setDashboardAccountsCount(dashboardAccountsCount);
  }

  @override
  Future<void> setDashboardTransactionsCount(int value) async {
    dashboardTransactionsCount = value;
    notifyListeners();

    settingsRepository.setDashboardTransactionsCount(dashboardTransactionsCount);
  }

  @override
  Future<void> setFrequentCurrencies(List<int> value) async {
    frequentCurrencies = value;
    notifyListeners();

    settingsRepository.setFrequentCurrencies(frequentCurrencies);
  }

  @override
  Future<void> setNotificationSettings(NotificationSettings value) async {
    notificationSettings = value;
    notifyListeners();

    settingsRepository.setNotificationSetting(value);
  }
}
