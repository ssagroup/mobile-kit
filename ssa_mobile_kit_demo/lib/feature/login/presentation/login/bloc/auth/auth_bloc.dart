import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/lifecycle_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/login_usecase.dart';
import 'package:mobile_kit_demo/shared/domain/entity/failure.dart';

part 'auth_bloc.freezed.dart';
part 'auth_state.dart';

class AuthenticationBloc extends ChangeNotifier {
  AuthenticationBloc(
    LoginUseCase loginUseCase,
    BiometricsUseCase biometricsUseCase,
    LifecycleUseCase lifecycleUseCase,
  )   : _loginUseCase = loginUseCase,
        _biometricsUseCase = biometricsUseCase,
        _lifecycleUseCase = lifecycleUseCase,
        _state = const AuthenticationState.initializing(),
        super() {
    _initialize();
  }

  AuthenticationState _state;

  final LoginUseCase _loginUseCase;
  final BiometricsUseCase _biometricsUseCase;
  final LifecycleUseCase _lifecycleUseCase;

  bool isInBackground = false;

  AuthenticationState get state => _state;

  void setState(AuthenticationState state) {
    _state = state;
    notifyListeners();
  }

  /// Perform initialization
  Future<void> _initialize() async {
    final isLoggedIn = await _loginUseCase.isLoggedIn();
    // final bool isPinSetup = await _authRepository.isPinSetup();
    // if (isLoggedIn && isPinSetup) {
    //   _state = const AuthenticationState.verifyUser();
    // } else if (isLoggedIn && !isPinSetup) {
    //   _state = const AuthenticationState.createPin();
    // } else {
    // _state = const AuthenticationState.login();
    // }
    if (isLoggedIn) {
      _state = const AuthenticationState.authenticated();
    } else {
      _state = const AuthenticationState.login();
    }
    await authStateChanges();
  }

  /// Log in to the system
  Future<Either<Failure, void>> signIn({
    required AuthRequest request,
  }) {
    final result = _loginUseCase.signIn(request: request);
    return result;
  }

  /// Listening to authentication state changes
  Future<void> authStateChanges() async {
    _loginUseCase.authStateChanges().listen((user) {
      if (user == null) {
        print('User is signed out!');
        setState(const AuthenticationState.login());
      } else {
        print('User is signed in!');
        setState(const AuthenticationState.authenticated());
      }
    });
  }

  /// Log out from the system
  Future<void> logout() async {
    final result = _loginUseCase.logout();
    setState(const AuthenticationState.login());
    return result;
  }

  void _initialFetch() {
    // _authRepository.trackAndUpdateFCMToken();
  }

  /// SECURITY AND BIOMETRICS
  Future<void> setupPin({
    required String pin,
  }) {
    return _biometricsUseCase.setupPin(pin: pin);
  }

  Future<bool> checkPin(String value) async {
    final isValid = await _biometricsUseCase.checkPin(value);
    if (isValid) {
      setState(const AuthenticationState.authenticated());
      _initialFetch();
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  Future<bool> get isBioAvailable {
    return _biometricsUseCase.isBioAvailable;
  }

  Future<void> enableBioAuth() {
    return _biometricsUseCase.enableBioAuth();
  }

  Future<bool> get isBioEnabled {
    return _biometricsUseCase.isBioEnabled;
  }

  Future<bool> authenticateBio() async {
    final result = await _biometricsUseCase.authenticateBio();
    if (result) {
      setState(const AuthenticationState.authenticated());
      _initialFetch();
    }
    return result;
  }

  void completeBioSetup() {
    setState(const AuthenticationState.authenticated());
    _initialFetch();
  }

  /// APP LIFECYCLE
  Future<void> enterBackground() async {
    if (state != const AuthenticationState.authenticated()) {
      return;
    }
    await _lifecycleUseCase.enterBackground();
    isInBackground = true;
  }

  Future<void> enterForeground() async {
    if (state != const AuthenticationState.authenticated()) {
      return;
    }
    if (!isInBackground) {
      return;
    }
    isInBackground = false;

    final lastActive = await _lifecycleUseCase.enterForeground();
    if (DateTime.now().difference(lastActive).inMinutes > 15) {
      setState(const AuthenticationState.verifyUser());
    } else {
      _initialFetch();
    }
  }
}
