import 'package:flutter/material.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/presentation/screen/setup_pin_screen.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/verify_pin/presentation/screen/verify_pin_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/bottom_tab_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/settings/settings_screen.dart';
import 'package:mobile_kit/src/feature/login/presentation/screen/login_screen.dart';

// Auth
const loginRouteName = 'login';
const setupPinRouteName = 'setupPin';
const verifyPinRouteName = 'verifyPin';

// Main
const homeRouteName = 'home';
const notificationListRouteName = 'notificationList';
const settingsRouteName = 'settings';

GoRouter setupRouter(AuthenticationNotifier authNotifier) {
  final GoRouter router = GoRouter(
    refreshListenable: authNotifier,
    debugLogDiagnostics: true,
    errorPageBuilder: (context, state) =>
        MaterialPage<void>(
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
        pageBuilder: (context, state) =>
        const NoTransitionPage<void>(
          // key: state.pageKey,
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/setup_pin',
        name: setupPinRouteName,
        pageBuilder: (context, state) =>
        const NoTransitionPage<void>(
          // key: state.pageKey,
          child: SetupPinScreen(),
        ),
      ),
      GoRoute(
        path: '/verify_pin',
        name: verifyPinRouteName,
        pageBuilder: (context, state) =>
        const NoTransitionPage<void>(
          // key: state.pageKey,
          child: VerifyPinScreen(),
        ),
      ),
      GoRoute(
        path: '/home',
        name: homeRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          // key: state.pageKey,
          child: BottomTabScreen(),
        ),
        routes: [
          GoRoute(
            path: 'notification_list',
            name: notificationListRouteName,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: Container(),
            ),
          ),
          GoRoute(
            path: 'settings',
            name: settingsRouteName,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: SettingsScreen(),
            ),
          ),
        ],
      ),
    ],
  );
  return router;
}