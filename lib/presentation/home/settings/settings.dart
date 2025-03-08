import '../../../application/notification/notification_service.dart';
import '../../../application/settings/settings_controller.dart';
import '../../../domain/core/currency_list.dart';
import '../../../injection.dart';
import 'dialogs/notification_enable_form.dart';
import 'dialogs/transactions_count_form.dart';
import 'widgets/list_settings_item.dart';
import '../../widgets/components/white_card_widget.dart';
import '../../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'dialogs/accounts_count_form.dart';
import 'dialogs/currencies_form.dart';

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAppBarWidget(title: 'Settings');
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: getIt<SettingsController>(),
        builder: (context, _) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Dashboard'),
                  ),
                  WhiteCardWidget(
                    child: Column(
                      children: [
                        ListSettingsItemWidget(
                          title: 'Transactions count',
                          icon: Icons.now_widgets,
                          value: '${getIt<SettingsController>().dashboardTransactionsCount}',
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => const SettingsTransactionsCountForm(),
                            );
                          },
                        ),
                        ListSettingsItemWidget(
                          title: 'Accounts count',
                          value: '${getIt<SettingsController>().dashboardAccountsCount}',
                          icon: Icons.now_widgets_outlined,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => const SettingsAccountsCountForm(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Notification'),
                  ),
                  WhiteCardWidget(
                    child: _NotificationSettingComponent(
                      settingsController: getIt<SettingsController>(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Utility'),
                  ),
                  WhiteCardWidget(
                    child: Column(
                      children: [
                        ListSettingsItemWidget(
                          title: 'Your currencies',
                          value: getIt<SettingsController>()
                              .frequentCurrencies
                              .map((i) => '${currencies[i]['a_code']}')
                              .toList()
                              .join(' '),
                          icon: Icons.money,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => const SettingsCurrenciesForm(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class _NotificationSettingComponent extends StatelessWidget {
  const _NotificationSettingComponent({
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    final notificationSettings = settingsController.notificationSettings;
    final bool enableRemainderNotification = notificationSettings.enabled;

    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {
              await showDialog(
                context: context,
                builder: (_) => const NotificationEnableForm(),
              );
            },
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Icon(enableRemainderNotification ? Icons.notifications_active : Icons.notifications,
                      color: Theme.of(context).colorScheme.secondary),
                  const SizedBox(width: 15),
                  Expanded(
                      child: Text('Enable notification with remainder\nto write down transactions',
                          maxLines: 2, style: Theme.of(context).textTheme.titleSmall)),
                  Container(
                    width: 60,
                    alignment: Alignment.centerRight,
                    child: Text(enableRemainderNotification ? 'on' : 'off',
                        overflow: TextOverflow.ellipsis, maxLines: 2, style: Theme.of(context).textTheme.titleSmall),
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {
              final time = await showTimePicker(context: context, initialTime: notificationSettings.time);

              if (time != null) {
                final notificationSettings0 = notificationSettings.copyWith(time: time);
                settingsController.setNotificationSettings(notificationSettings0);
                await getIt<NotificationService>().sheduleNotification(notificationSettings0);
              }
            },
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: enableRemainderNotification ? Theme.of(context).colorScheme.secondary : Colors.grey,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                      child: Text('Remainder time',
                          maxLines: 2,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: enableRemainderNotification ? null : Colors.grey,
                              ))),
                  Container(
                    width: 70,
                    alignment: Alignment.centerRight,
                    child: Text(notificationSettings.time.format(context),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: enableRemainderNotification ? null : Colors.grey)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
