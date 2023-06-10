import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../app/view/app.dart';
import 'app/flavours/app_flavour.dart';
import 'core/service_locator.dart';
import 'services/firebase_messaging_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseMessagingService.initialize();
  await setUpServiceLocator();
  // final token = await FirebaseMessaging.instance.getToken();
  // debugPrint('Token: $token');
  Intl.defaultLocale = 'id';
  initializeDateFormatting();

  bootstrap(() => const App());
}
