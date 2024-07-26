import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class NotificationsLocalDatasourceImpl {
  final _pushController = StreamController<Unit>.broadcast();
  final BehaviorSubject<String?> fcmToken = BehaviorSubject();
  String? lastFcmToken;

  NotificationsLocalDatasourceImpl() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    Timer.run(() async {
      final token = await FirebaseMessaging.instance.getToken();
      fcmToken.add(token);
      lastFcmToken = token;
    });

    FirebaseMessaging.instance
        .onTokenRefresh
        .listen((token) {
      fcmToken.add(token);
      lastFcmToken = token;
    }).onError((err) {
      if (kDebugMode) {
        print('NotificationsLocalDatasourceImpl: onTokenRefresh Error: $err');
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }

      _pushController.add(unit);
    });
  }

  Future<void> askForPermissions() async {
    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: false,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');
  }

  Stream<Unit> get pushMessage => _pushController.stream;
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('==== 4:');
  print('==== onDidReceiveBackgroundNotificationResponse: ' + message.toString());
}