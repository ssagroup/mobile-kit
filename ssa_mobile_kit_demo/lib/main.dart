import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/data_provider/data_provider.dart';
import 'package:mobile_kit_demo/core/router/router.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/enter_foreground_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/enter_background_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/launch_usecase.dart';
import 'package:mobile_kit_demo/shared/bloc/lifecycle_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;

  await Firebase.initializeApp();

  final path = (await getApplicationDocumentsDirectory()).path;
  final storagePath = '$path/cc-hive';
  await DataProvider.initialize(storagePath: storagePath);

  final enterBackgroundUseCase = EnterBackgroundUseCase(
    DataProvider.instance.authRep,
    DataProvider.instance.biometricsAuthRep,
  );
  final enterForegroundUseCase = EnterForegroundUseCase(
    DataProvider.instance.authRep,
    DataProvider.instance.biometricsAuthRep,
  );
  final lifeCycleBloc = LifeCycleBloc(
    enterBackgroundUseCase,
    enterForegroundUseCase,
  );

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LifeCycleBloc>(create: (_) => lifeCycleBloc),
    ],
    child: LifeCycleManager(
      onStateChanged: (AppLifecycleState state) {
        if (state == AppLifecycleState.resumed) {
          lifeCycleBloc.enterForeground();
        } else if (state == AppLifecycleState.paused) {
          lifeCycleBloc.enterBackground();
        }
      },
      child: SSAMobileKitApp(router: setupRouter()),
    ),
  ));
}

class SSAMobileKitApp extends StatelessWidget {
  SSAMobileKitApp({super.key, required this.router})
      : launchUseCase = LaunchUseCase(
          DataProvider.instance.authRep,
          DataProvider.instance.biometricsAuthRep,
        ) {
    launchUseCase.invoke();
  }

  final GoRouter router;
  final LaunchUseCase launchUseCase;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
      theme: ThemeData(fontFamily: 'Manrope', useMaterial3: false),
    );
  }
}
