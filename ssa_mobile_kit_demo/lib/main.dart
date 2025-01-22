import 'package:flutter/material.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/mobile_kit_main.dart';
import 'package:mobile_kit_demo/core/data_provider/data_provider_impl.dart';
import 'package:firebase_core/firebase_core.dart';


DataProviderImpl? dataProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;

  await Firebase.initializeApp();
  dataProvider = await DataProviderImpl.create();
  runApp(SSAMobileKitApp(dataProvider!));
}

