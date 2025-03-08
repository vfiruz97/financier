import 'notification_setting.dart';

abstract class ISettingsRepository {
  int? getDashboardTransactionsCount();
  int? getDashboardAccountsCount();
  List<int>? getFrequentCurrencies();
  NotificationSettings? getNotificationSetting();

  Future<void> setDashboardTransactionsCount(int transactionsCount);
  Future<void> setDashboardAccountsCount(int accountsCount);
  Future<void> setFrequentCurrencies(List<int> currencies);
  Future<void> setNotificationSetting(NotificationSettings notificationSettings);
}
