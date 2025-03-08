import '../../domain/settings/notification_setting.dart';
import 'package:injectable/injectable.dart';

import '../../domain/settings/i_settings.dart';
import 'settings_local.dart';

@Singleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  final ISettingsLocal settingsLocal;

  SettingsRepository({required this.settingsLocal});

  @override
  int? getDashboardAccountsCount() {
    return settingsLocal.getDashboardAccountsCount();
  }

  @override
  int? getDashboardTransactionsCount() {
    return settingsLocal.getDashboardTransactionsCount();
  }

  @override
  List<int>? getFrequentCurrencies() {
    final response = settingsLocal.getFrequentCurrencies();
    if (response != null) {
      return response.map((e) => int.parse(e)).toList();
    }
    return null;
  }

  @override
  Future<void> setDashboardAccountsCount(int accountsCount) async {
    await settingsLocal.setDashboardAccountsCount(accountsCount);
  }

  @override
  Future<void> setDashboardTransactionsCount(int transactionsCount) async {
    await settingsLocal.setDashboardTransactionsCount(transactionsCount);
  }

  @override
  Future<void> setFrequentCurrencies(List<int> currencies) async {
    final currencies0 = currencies.map((e) => '$e').toList();
    await settingsLocal.setFrequentCurrencies(currencies0);
  }

  @override
  NotificationSettings? getNotificationSetting() {
    final response = settingsLocal.getNotificationSetting();
    return response;
  }

  @override
  Future<void> setNotificationSetting(NotificationSettings notificationSettings) async {
    await settingsLocal.setNotificationSetting(notificationSettings);
  }
}
