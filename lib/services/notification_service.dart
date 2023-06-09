import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../app/view/app.dart';
import '../core/service_locator.dart';
import '../data/models/request_model.dart';
import '../routes/app_routers.dart';
import '../shared/theme.dart';

class NotificationService {
  static ReceivedAction? initialAction;

  static bool isFlutterLocalNotificationsInitialized = false;

  static Future<void> initializedNotification() async {
    if (!isFlutterLocalNotificationsInitialized) {
      await AwesomeNotifications().initialize(
        null,
        [
          NotificationChannel(
            channelKey: 'high_importance_channel',
            channelName: 'High Importance Notifications',
            channelDescription:
                'This channel is used for important notifications.',
            defaultColor: const Color(0xFF9D50DD),
            ledColor: Colors.white,
            playSound: true,
            enableVibration: true,
            importance: NotificationImportance.Max,
            channelShowBadge: true,
            vibrationPattern: highVibrationPattern,
          ),
        ],
      );
      isFlutterLocalNotificationsInitialized = true;
    }

    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        displayNotificationRationale();
      }
    });

    initialAction = await AwesomeNotifications()
        .getInitialNotificationAction(removeFromActionEvents: false);
  }

  static Future<void> startListeningNotificationEvents() async {
    AwesomeNotifications()
        .setListeners(onActionReceivedMethod: onActionReceivedMethod);
  }

  static Future<void> showNotification(RemoteMessage message) async {
    Map<String, String?>? payload = message.data.cast<String, String?>();
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'high_importance_channel',
        title: message.notification!.title,
        body: message.notification!.body,
        payload: payload,
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // convert payload to json
    Map<String, dynamic> payload = receivedAction.payload!;
    String data = payload.toString().replaceFirst('request', '"request"');
    // convert json to object
    Request request = Request.fromJson(json.decode(data)['request']);
    serviceLocator<FlutterRouter>().push(
      DetailGuidanceRoute(
        request: request,
      ),
    );
  }

  static Future<bool> displayNotificationRationale() async {
    bool userAuthorized = false;
    BuildContext context = scaffoldMessengerKey.currentContext!;
    await showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text('Get Notified!',
              style: Theme.of(context).textTheme.titleLarge),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.notifications,
                      color: primary,
                      size: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('We need your permission to send you notifications'),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text(
                  'Deny',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.red),
                )),
            TextButton(
              onPressed: () async {
                userAuthorized = true;
                Navigator.of(ctx).pop();
              },
              child: Text(
                'Allow',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: primary),
              ),
            ),
          ],
        );
      },
    );

    return userAuthorized &&
        await AwesomeNotifications().requestPermissionToSendNotifications();
  }
}
