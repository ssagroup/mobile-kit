import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/data_provider/data_provider.dart';
import 'package:mobile_kit_demo/core/router/router.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/lifecycle_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/login_usecase.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;
  await Firebase.initializeApp();
  final path = (await getApplicationDocumentsDirectory()).path;
  final storagePath = '$path/cc-hive';
  // final helper = await DataProvider.generate(
  //   storagePath: storagePath,
  // );
  await DataProvider.initialize(storagePath: storagePath);

  final loginUseCase = LoginUseCase(DataProvider.instance.authRep);
  final biometricsUseCase = BiometricsUseCase(DataProvider.instance.authRep);
  final lifecycleUseCase = LifecycleUseCase(DataProvider.instance.authLocalDataSource);
  final authBloc = AuthenticationBloc(
    loginUseCase,
    biometricsUseCase,
    lifecycleUseCase,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthenticationBloc>(create: (_) => authBloc),
    ],
    child: LifeCycleManager(
      onStateChanged: (AppLifecycleState state) {
        if (state == AppLifecycleState.resumed) {
          authBloc.enterForeground();
        } else if (state == AppLifecycleState.paused) {
          authBloc.enterBackground();
        }
      },
      child: SSAMobileKitApp(router: setupRouter(authBloc)),
    ),
  ));
}

class SSAMobileKitApp extends StatelessWidget {
  const SSAMobileKitApp({super.key, required this.router});

  final GoRouter router;

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
