import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/main/sync_net_local_db.dart';
import 'package:sync_net_and_local_db/core/services/notification_service/i_notification_service.dart';
import 'package:sync_net_and_local_db/core/services/notification_service/notification_service.dart';
import 'package:sync_net_and_local_db/firebase_options.dart';

/// [firebaseMessagingBackgroundHandler] must be
/// 1. It must not be an anonymous function.
/// 2. It must be a top-level function
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupLocator();
  await sl<INotificationService>().showFlutterNotification(message);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupLocator();

  // notification init methods
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await notificationInitMethods();
  runApp(const SyncNetLocalDb());
}
