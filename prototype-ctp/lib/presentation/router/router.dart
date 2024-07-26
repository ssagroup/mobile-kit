import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/login/screen/login_screen.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/screen/bot_list_screen.dart';
import 'package:ctp_mobile/presentation/ui/main/notification/screen/notification_list_screen.dart';
import 'package:ctp_mobile/presentation/ui/setup_pin/screen/setup_pin_screen.dart';
import 'package:ctp_mobile/presentation/ui/verify_pin/screen/verify_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  final AuthenticationBloc authenticationBloc;

  // Auth
  static const loginRouteName = 'login';
  static const setupPinRouteName = 'setupPin';
  static const verifyPinRouteName = 'verifyPin';
  static const botListRouteName = 'botList';
  static const notificationListRouteName = 'notificationList';

  AppRouter(this.authenticationBloc)
  :super(
    refreshListenable: authenticationBloc,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: loginRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          // key: state.pageKey,
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/setup_pin',
        name: setupPinRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          // key: state.pageKey,
          child: SetupPinScreen(),
        ),
      ),
      GoRoute(
        path: '/verify_pin',
        name: verifyPinRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          // key: state.pageKey,
          child: VerifyPinScreen(),
        ),
      ),
      GoRoute(
        path: '/bot_list',
        name: botListRouteName,
        pageBuilder: (context, state) => const NoTransitionPage<void>(
          // key: state.pageKey,
          child: BotListScreen(),
        ),
        routes: [
          GoRoute(
            path: 'notification_list',
            name: notificationListRouteName,
            pageBuilder: (context, state) => const MaterialPage<void>(
              child: NotificationListScreen(),
            ),
          ),
        ],
      ),
    ],
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
      final isLoginState = authenticationBloc.state == const AuthenticationState.login();

      if (isLoginState && !isLoginScreen) {
        return state.namedLocation(loginRouteName);
      }

      final isCreatePinScreen = state.fullPath == '/setup_pin';
      final isCreatePinState = authenticationBloc.state == const AuthenticationState.createPin();

      if (isCreatePinState && !isCreatePinScreen) {
        return state.namedLocation(setupPinRouteName);
      }

      final isVerifyPinScreen = state.fullPath == '/verify_pin';
      final isVerifyPinState = authenticationBloc.state == const AuthenticationState.verifyUser();

      if (isVerifyPinState && !isVerifyPinScreen) {
        return state.namedLocation(verifyPinRouteName);
      }

      final isMainScreen = state.fullPath?.contains('/bot_list');
      final isMainState = authenticationBloc.state == const AuthenticationState.authenticated();

      if (isMainState && isMainScreen == false) {
        return state.namedLocation(botListRouteName);
      }

      return null;
    },
  );
}