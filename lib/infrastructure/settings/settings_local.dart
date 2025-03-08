import '../../domain/settings/notification_setting.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISettingsLocal {
  int? getDashboardTransactionsCount();
  int? getDashboardAccountsCount();
  List<String>? getFrequentCurrencies();
  NotificationSettings? getNotificationSetting();

  Future<void> setDashboardTransactionsCount(int transactionsCount);
  Future<void> setDashboardAccountsCount(int accountsCount);
  Future<void> setFrequentCurrencies(List<String> currencies);
  Future<void> setNotificationSetting(NotificationSettings notificationSettings);
}

@Singleton(as: ISettingsLocal)
class SettingsLocal implements ISettingsLocal {
  static const String prefix = 'settings_';
  static const String _accountKey = '${prefix}_dashboard_accounts_count';
  static const String _transactionsKey = '${prefix}_dashboard_transactions_count';
  static const String _frequentCurrencyKey = '${prefix}_frequent_currencies';
  static const String _notificationKey = '${prefix}_notification';

  final SharedPreferences localDb;

  SettingsLocal({required this.localDb});

  @override
  int? getDashboardAccountsCount() {
    return localDb.getInt(_accountKey);
  }

  @override
  int? getDashboardTransactionsCount() {
    return localDb.getInt(_transactionsKey);
  }

  @override
  List<String>? getFrequentCurrencies() {
    return localDb.getStringList(_frequentCurrencyKey);
  }

  @override
  Future<void> setDashboardAccountsCount(int accountsCount) async {
    await localDb.setInt(_accountKey, accountsCount);
  }

  @override
  Future<void> setDashboardTransactionsCount(int transactionsCount) async {
    await localDb.setInt(_transactionsKey, transactionsCount);
  }

  @override
  Future<void> setFrequentCurrencies(List<String> currencies) async {
    await localDb.setStringList(_frequentCurrencyKey, currencies);
  }

  @override
  NotificationSettings? getNotificationSetting() {
    final notificationStr = localDb.getString(_notificationKey);
    if (notificationStr != null) {
      return NotificationSettings.fromString(notificationStr);
    }
    return null;
  }

  @override
  Future<void> setNotificationSetting(NotificationSettings notificationSettings) async {
    await localDb.setString(_notificationKey, notificationSettings.toString());
  }
}
