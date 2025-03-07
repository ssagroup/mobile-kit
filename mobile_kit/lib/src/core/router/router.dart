import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/presentation/screen/setup_pin_screen.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/verify_pin/presentation/screen/verify_pin_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/bottom_tab_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/chart/chart_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/control/control_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/infrastructure/infrastructure_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/infrastructure_details/infrastructure_details_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/kpis/kpis_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/settings/settings_screen.dart';
import 'package:mobile_kit/src/feature/login/presentation/screen/login_screen.dart';

// Auth
const loginRouteName = 'login';
const setupPinRouteName = 'setupPin';
const verifyPinRouteName = 'verifyPin';

// Main
const homeRouteName = 'home';
const settingsRouteName = 'settings';
const controlRouteName = 'control';
const kpisRouteName = 'kpis';
const infrastructureRouteName = 'infrastructure';
const infrastructureDetailsRouteName = 'infrastructureDetails';
const kpisChartRouteName = 'kpisChart';
const infrastructureChartRouteName = 'infrastructureChart';

GoRouter setupRouter(AuthenticationNotifier authNotifier) {
  final GoRouter router = GoRouter(
    refreshListenable: authNotifier,
    debugLogDiagnostics: true,
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
    redirect: (context, state) {
      final isLoginScreen = state.fullPath == '/';
      final isLoginState = authNotifier.state == const AuthenticationState.login();

      if (isLoginState && !isLoginScreen) {
        return state.namedLocation(loginRouteName);
      }

      final isCreatePinScreen = state.fullPath == '/setup_pin';
      final isCreatePinState = authNotifier.state == const AuthenticationState.createPin();

      if (isCreatePinState && !isCreatePinScreen) {
        return state.namedLocation(setupPinRouteName);
      }

      final isVerifyPinScreen = state.fullPath == '/verify_pin';
      final isVerifyPinState = authNotifier.state == const AuthenticationState.verifyUser();

      if (isVerifyPinState && !isVerifyPinScreen) {
        return state.namedLocation(verifyPinRouteName);
      }

      final isMainState = authNotifier.state == const AuthenticationState.authenticated();
      final isOnMainScreen = state.fullPath?.startsWith('/home') == true;
      if (isMainState && !isOnMainScreen) {
        return state.namedLocation(homeRouteName);
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: loginRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/setup_pin',
        name: setupPinRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          child: SetupPinScreen(),
        ),
      ),
      GoRoute(
        path: '/verify_pin',
        name: verifyPinRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          child: VerifyPinScreen(),
        ),
      ),
      GoRoute(
        path: '/home',
        name: homeRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          child: BottomTabScreen(),
        ),
        routes: [
          GoRoute(
            path: 'settings',
            name: settingsRouteName,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: SettingsScreen(),
            ),
          ),
          GoRoute(
            path: 'control',
            name: controlRouteName,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: ControlScreen(),
            ),
          ),
          GoRoute(
            path: 'kpis',
            name: kpisRouteName,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: KpisScreen(),
            ),
            routes: [
              GoRoute(
                path: 'kpisChart',
                name: kpisChartRouteName,
                pageBuilder: (context, state) => MaterialPage<void>(
                  child: ChartScreen(state.extra as ChartScreenSettings),
                ),
              ),
            ],
          ),
          GoRoute(
              path: 'infrastructure',
              name: infrastructureRouteName,
              pageBuilder: (context, state) => MaterialPage<void>(
                    child: InfrastructureScreen(),
                  ),
              routes: [
                GoRoute(
                  path: 'infrastructureDetails',
                  name: infrastructureDetailsRouteName,
                  pageBuilder: (context, state) => MaterialPage<void>(
                    child: InfrastructureDetailsScreen(
                        state.uri.queryParameters['title'].orEmpty, state.uri.queryParameters['id'].orEmpty),
                  ),
                  routes: [
                    GoRoute(
                      path: 'infrastructureChart',
                      name: infrastructureChartRouteName,
                      pageBuilder: (context, state) => MaterialPage<void>(
                        child: ChartScreen(state.extra as ChartScreenSettings),
                      ),
                    ),
                  ],
                ),
              ]),
        ],
      ),
    ],
  );
  return router;
}
