import 'package:flutter/material.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/router/router.dart';

class SSAMobileKitApp extends StatelessWidget {
  SSAMobileKitApp(DataProvider dataProvider, {super.key}) {

    DependencyManager.registerDependency(dataProvider);
    launchUseCase = LaunchUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
    );

    router = setupRouter(GetIt.instance<AuthenticationNotifier>());
    launchUseCase.invoke();
  }

  late final GoRouter router;
  late final LaunchUseCase launchUseCase;

  @override
  Widget build(BuildContext context) {
    final enterBackgroundUseCase = EnterBackgroundUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
    );
    final enterForegroundUseCase = EnterForegroundUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
    );

    return LifeCycleManager(
      onStateChanged: (AppLifecycleState state) {
        if (state == AppLifecycleState.resumed) {
          enterForegroundUseCase.enterForeground();
        } else if (state == AppLifecycleState.paused) {
          enterBackgroundUseCase.enterBackground();
        }
      },
      child: MaterialApp.router(
        themeMode: ThemeMode.light,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        debugShowCheckedModeBanner: false,
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(fontFamily: 'Manrope', useMaterial3: false),
      ),
    );
  }
}
