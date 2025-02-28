import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/src/core/data_provider/data_provider.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/widget/lifecycle_widget.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/update_push_token_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_notifier.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/enter_background_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/enter_foreground_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/launch_usecase.dart';

class SSAMobileKitApp extends StatelessWidget {
  SSAMobileKitApp(DataProvider dataProvider, {super.key}) {

    DependencyManager.registerDependency(dataProvider);
    launchUseCase = LaunchUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
      GetIt.instance<AlertsRepository>(),
    );
    updatePushTokenUseCase = UpdatePushTokenUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<AlertsRepository>(),
    );
    router = setupRouter(GetIt.instance<AuthenticationNotifier>());
    launchUseCase.invoke();
    updatePushTokenUseCase.invoke();
  }

  late final GoRouter router;
  late final LaunchUseCase launchUseCase;
  late final UpdatePushTokenUseCase updatePushTokenUseCase;

  @override
  Widget build(BuildContext context) {
    final enterBackgroundUseCase = EnterBackgroundUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
    );
    final enterForegroundUseCase = EnterForegroundUseCase(
      GetIt.instance<AuthenticationRepository>(),
      GetIt.instance<BiometricsAuthRepository>(),
      GetIt.instance<AlertsRepository>(),
    );

    return LifeCycleManager(
      onStateChanged: (AppLifecycleState state) {
        if (state == AppLifecycleState.resumed) {
          enterForegroundUseCase.invoke();
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
