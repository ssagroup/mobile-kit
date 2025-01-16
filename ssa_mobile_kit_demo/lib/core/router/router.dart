import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit_demo/feature/home/screen/bottom_tab_screen.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/screen/login_screen.dart';

// Auth
const loginRouteName = 'login';
const setupPinRouteName = 'setupPin';
const verifyPinRouteName = 'verifyPin';

// Main
const homeRouteName = 'home';
const notificationListRouteName = 'notificationList';

GoRouter setupRouter(AuthenticationBloc authenticationBloc) {
  final GoRouter router = GoRouter(
    refreshListenable: authenticationBloc,
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

      final isMainState = authenticationBloc.state == const AuthenticationState.authenticated();
      if (isMainState) {
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
            NoTransitionPage<void>(
              // key: state.pageKey,
              child: Container(),
            ),
      ),
      GoRoute(
        path: '/verify_pin',
        name: verifyPinRouteName,
        pageBuilder: (context, state) =>
            NoTransitionPage<void>(
              // key: state.pageKey,
              child: Container(),
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
        ],
      ),
    ],
  );
  return router;
}