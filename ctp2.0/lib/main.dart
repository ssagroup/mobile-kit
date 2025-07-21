import 'dart:io';

import 'package:ctp_mobile/core/data_provider/data_provider_impl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/mobile_kit_main.dart';

DataProviderImpl? dataProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;

  if(Platform.isAndroid) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: 'AIzaSyBl9mbU6uk5pijIgt92e5pyMFz_fbVxV5g',
          appId: '1:358947609747:android:6dab7969b14d39c55d8166',
          messagingSenderId: '358947609747',
          projectId: 'ctp-id',
          storageBucket: 'ctp-id.firebasestorage.app',
        )
    );
  } else {
    await Firebase.initializeApp();
  }

  dataProvider = await DataProviderImpl.create();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(SSAMobileKitApp(dataProvider!));
  });
}
