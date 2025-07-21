import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_kit/mobile_kit.dart';

class FirebaseNotificationsLocalDatasourceImpl implements NotificationsLocalDatasource {
  FirebaseNotificationsLocalDatasourceImpl({
    FirebaseMessaging? firebaseMessaging,
  }) : _firebaseInstance = firebaseMessaging ?? FirebaseMessaging.instance {
    _run();
  }

  final _pushController = StreamController<Unit>.broadcast();
  final FirebaseMessaging _firebaseInstance;
  final BehaviorSubject<String?> _fcmToken = BehaviorSubject();
  String? lastFcmToken;

  @override
  Stream<Unit> get pushMessage => _pushController.stream;

  @override
  Future<void> askForPermissions() async {

    final settings = await _firebaseInstance.requestPermission(
      alert: true,
      announcement: false,
      badge: false,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (kDebugMode) {
      print('User granted permission: ${settings.authorizationStatus}');
    }
  }

  void _run() {
    Future.delayed(const Duration(seconds: 3), () async {
      final token = await _firebaseInstance.getToken();
      _fcmToken.add(token);
      lastFcmToken = token;
      if (kDebugMode) {
        print('Registration Token=$token');
      }
    });

    _firebaseInstance
        .onTokenRefresh
        .listen((token) {
      _fcmToken.add(token);
      lastFcmToken = token;
    }).onError((err) {
      if (kDebugMode) {
        print('NotificationsLocalDatasourceImpl: onTokenRefresh Error: $err');
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('Got a message whilst in the foreground!');
        print('Message data: ${message.data}');
      }

      if (message.notification != null) {
        if (kDebugMode) {
          print('Message also contained a notification: ${message.notification}');
        }
      }

      _pushController.add(unit);
    });
  }

  @override
  Stream<String?> get pushToken => _fcmToken.stream;

}