import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/notification_service/i_notification_service.dart';

class NotificationService implements INotificationService {
  NotificationService(this.messaging, this.localNotificationsPlugin);

  final FirebaseMessaging messaging;
  final FlutterLocalNotificationsPlugin localNotificationsPlugin;

  AndroidNotificationChannel? channel;
  NotificationSettings? settings;
  int id = 1;
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
  ) {
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
    }

    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/app_icon');

    const initializationSettingsIOS = DarwinInitializationSettings();

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // buraya gelen mesajları handle edecek aksiyonlar yazılır
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
  }

  @override
  Future<void> setupInteractedMessage() async {
    final initialMessage = await messaging.getInitialMessage();

    if (initialMessage != null) {
      await _handleMessage(initialMessage);
    }
  }

  Future<void> repeatNotification({
    required String title,
    required String body,
  }) async {
    const androidNotificationDetails = AndroidNotificationDetails(
      'repeating channel id',
      'repeating channel name',
      channelDescription: 'repeating description',
    );
    const notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await localNotificationsPlugin.periodicallyShow(
      id++,
      title,
      body,
      RepeatInterval.everyMinute,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    // buraya gelen mesajları handle edecek aksiyonlar yazılır
  }
}

Future<void> notificationInitMethods() async {
  await sl<INotificationService>().initNotificationService();
  await sl<INotificationService>().setupNotifications();
  await sl<INotificationService>().setupInteractedMessage();
  await sl<INotificationService>().listenerMethods();
}
