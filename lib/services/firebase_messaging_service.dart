import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../core/service_locator.dart';
import '../data/repositories/login/base/login_user_repository.dart';
import 'local_token_cache_service.dart';
import 'notification_service.dart';

class FirebaseMessagingService {
  @pragma('vm:entry-point')
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    await NotificationService.initializedNotification();
    await NotificationService.startListeningNotificationEvents();
    NotificationService.showNotification(message);
  }

  static Future<void> initialize() async {
    await Firebase.initializeApp();
    await FirebaseMessaging.instance.getToken();
    await NotificationService.initializedNotification();
    await NotificationService.startListeningNotificationEvents();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      NotificationService.showNotification(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      NotificationService.showNotification(message);
    });
  }

  Future<void> getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) async {
      await serviceLocator<LocalTokenCacheService>().saveToken(token!);
      await serviceLocator<LoginUserRepository>().storeToken(token);
    });
  }

  Future<void> refreshToken() async {
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      await serviceLocator<LocalTokenCacheService>().saveToken(token);
      await serviceLocator<LoginUserRepository>().storeToken(token);
    });
  }

  Future<void> removeToken() async {
    await FirebaseMessaging.instance.deleteToken();
  }
}
