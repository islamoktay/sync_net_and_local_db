import 'package:firebase_messaging/firebase_messaging.dart';

abstract class INotificationService {
  Future<void> initNotificationService();
  Future<void> listenerMethods();
  Future<void> setupNotifications();
  Future<void> setupInteractedMessage();
  Future<void> showFlutterNotification(RemoteMessage message);
  Future<void> repeatNotification({
    required String title,
    required String body,
  });
  Future<void> cancelNotifications();
}
