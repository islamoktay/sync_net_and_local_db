import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/notification_service/i_notification_service.dart';

class NotificationService implements INotificationService {
  NotificationService(this.messaging, this.localNotificationsPlugin);

  final FirebaseMessaging messaging;
  final FlutterLocalNotificationsPlugin localNotificationsPlugin;

  AndroidNotificationChannel? channel;
  NotificationSettings? settings;
  
  @override
  Future<void> initNotificationService() async {
    await messaging.setAutoInitEnabled(true);

    settings = await requestNotificationPermission(messaging);
  }

  @override
  Future<void> listenerMethods() async {
    FirebaseMessaging.onMessage.listen((message) async {
      log(messaging.toString());
      if (message.notification != null) {
        if (settings?.authorizationStatus == AuthorizationStatus.authorized) {
          await showFlutterNotification(message);
        } else {
          await requestNotificationPermission(messaging);
        }
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<NotificationSettings> requestNotificationPermission(
    FirebaseMessaging messaging,
  ) async {
    return messaging.requestPermission();
  }

  @override
  Future<void> setupNotifications() async {
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );

    if (channel != null) {
      await localNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel!);
      await localNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestExactAlarmsPermission();
    }

    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const initializationSettingsIOS = DarwinInitializationSettings();

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // here we can add actions for the messages
      },
    );
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  @override
  Future<void> showFlutterNotification(RemoteMessage message) async {
    try {
      final android = message.notification?.android;
      final notification = message.notification;
      if (notification != null && android != null && channel != null) {
        await localNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel!.id,
              channel!.name,
              channelDescription: channel!.description,
              icon: android.smallIcon,
            ),
          ),
        );
      }
    } catch (e) {
      return;
    }
  }

  @override
  Future<void> setupInteractedMessage() async {
    final initialMessage = await messaging.getInitialMessage();

    if (initialMessage != null) {
      await _handleMessage(initialMessage);
    }
  }

  @override
  Future<void> repeatNotification({
    required String title,
    required String body,
  }) async {
    try {
      final list = await localNotificationsPlugin.pendingNotificationRequests();

      if (list.isEmpty) {
        const androidNotificationDetails = AndroidNotificationDetails(
          'high_importance_channel', // id
          'High Importance Notifications', // title
          channelDescription:
              'This channel is used for important notifications.',
          priority: Priority.max,
        );

        const notificationDetails =
            NotificationDetails(android: androidNotificationDetails);

        await localNotificationsPlugin.periodicallyShow(
          AppConstants.repeatID,
          title,
          body,
          RepeatInterval.everyMinute,
          notificationDetails,
          androidScheduleMode: AndroidScheduleMode.inexact,
        );
      }
    } catch (e) {
      return;
    }
  }

  @override
  Future<void> cancelNotifications() async {
    try {
      await localNotificationsPlugin.cancel(AppConstants.repeatID);
    } catch (e) {
      return;
    }
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    // here we can add actions for the messages
  }
}

Future<void> notificationInitMethods() async {
  await sl<INotificationService>().initNotificationService();
  await sl<INotificationService>().setupNotifications();
  await sl<INotificationService>().setupInteractedMessage();
  await sl<INotificationService>().listenerMethods();
}
