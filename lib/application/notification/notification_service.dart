import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../domain/settings/notification_setting.dart';
import '../../presentation/home.dart';
import '../buttom_navigation/buttom_navigation_bloc.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;

@singleton
class NotificationService {
  static final NotificationService _notificationService = NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  NotificationService._internal();

  Future<void> initNotification() async {
    // tz.initializeTimeZones();
    // const AndroidInitializationSettings initializationSettingsAndroid =
    //     AndroidInitializationSettings('@mipmap/ic_launcher');

    // IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
    //   requestAlertPermission: false,
    //   requestBadgePermission: false,
    //   requestSoundPermission: false,
    //   onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) {
    //     // TO-DO: Implement route
    //   },
    // );

    // InitializationSettings initializationSettings = InitializationSettings(
    //   android: initializationSettingsAndroid,
    //   iOS: initializationSettingsIOS,
    // );

    // await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosInitializationSettings = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: iosInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  Future<void> sheduleNotification(NotificationSettings notificationSettings) async {
    // print(tz.timeZoneDatabase.locations);
    await cancelAllNotifications();

    if (!notificationSettings.enabled) return;

    if (!Platform.isAndroid) await askPermission();

    // final now = DateTime.now().add(Duration(minutes: 1));
    // print(now);

    // await flutterLocalNotificationsPlugin.show(
    //   DateTime.now().microsecond,
    //   'Financier',
    //   'No transactions added for the last time',
    //   // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
    //   // Time(notificationSettings.time.hour, notificationSettings.time.minute),
    //   const NotificationDetails(
    //     android: AndroidNotificationDetails(
    //       'main_channel',
    //       'Main Channel',
    //       channelDescription: 'Main channel notifications',
    //       importance: Importance.high,
    //       priority: Priority.high,
    //       icon: '@mipmap/ic_launcher',
    //       visibility: NotificationVisibility.public,
    //       autoCancel: true,
    //       // icon: '@drawable/res_notification_app_icon',
    //     ),
    //     iOS: IOSNotificationDetails(
    //       sound: 'default.wav',
    //       presentAlert: true,
    //       presentBadge: true,
    //       presentSound: true,
    //     ),
    //   ),
    //   // matchDateTimeComponents: DateTimeComponents.dateAndTime,
    //   // androidAllowWhileIdle: true,
    //   // uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    //   payload: 'add_transaction',
    // );

    await flutterLocalNotificationsPlugin.periodicallyShow(
      DateTime.now().microsecond,
      'Financier',
      'No transactions added for the last time',
      RepeatInterval.daily,
      // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      // Time(notificationSettings.time.hour, notificationSettings.time.minute),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'main_channel',
          'Main Channel',
          channelDescription: 'Main channel notifications',
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
          visibility: NotificationVisibility.public,
          autoCancel: true,
          // icon: '@drawable/res_notification_app_icon',
        ),
        iOS: DarwinNotificationDetails(
          sound: 'default.wav',
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exact,
      // matchDateTimeComponents: DateTimeComponents.dateAndTime,
      // androidAllowWhileIdle: true,
      // uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      payload: 'add_transaction',
    );
  }

  Future<void> cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<bool?> askPermission() async {
    return await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> notificationRouting(BuildContext context) async {
    try {
      final NotificationAppLaunchDetails? notificationAppLaunchDetails =
          await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

      if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
        print('notificationAppLaunchDetails?.payload');
        print(notificationAppLaunchDetails?.notificationResponse?.payload);

        if (notificationAppLaunchDetails != null &&
            notificationAppLaunchDetails.notificationResponse?.payload == 'add_transaction') {
          print('urrA');
          // BlocProvider.of<ButtomNavigationBloc>(context).add(const ButtomNavigationEvent.push(NavigationPages.main));
        }
        BlocProvider.of<ButtomNavigationBloc>(context).add(const ButtomNavigationEvent.push(NavigationPages.main));
      }
    } catch (_) {}
  }
}
