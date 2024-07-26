import 'package:ctp_mobile/api/request/signin_request.dart';
import 'package:ctp_mobile/data/datasource/auth_local_datasource.dart';
import 'package:ctp_mobile/data/repository/authentication_repository.dart';
import 'package:ctp_mobile/data/repository_helper.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends ChangeNotifier {
  AuthenticationBloc({
    required RepositoryHelper repositoryHelper,
  })
      : _authRepository = repositoryHelper.authenticationRep,
        _localStorageDatasource = repositoryHelper.authLocalDataSource,
        _state = const AuthenticationState.initializing(),
        super() {
    _initialize();
  }

  AuthenticationState _state;
  final AuthenticationRepositoryImpl _authRepository;
  final AuthLocalDataSourceImpl _localStorageDatasource;
  bool isInBackground = false;

  AuthenticationState get state => _state;

  void setState(AuthenticationState state) {
    _state = state;
    notifyListeners();
  }

  /// Perform initialization
  Future<void> _initialize() async {
    final bool isLoggedIn = await _authRepository.isLoggedIn();
    final bool isPinSetup = await _authRepository.isPinSetup();
    if (isLoggedIn && isPinSetup) {
      _state = const AuthenticationState.verifyUser();
    } else if (isLoggedIn && !isPinSetup) {
      _state = const AuthenticationState.createPin();
    } else {
      _state = const AuthenticationState.login();
    }
    notifyListeners();
  }

  Future<Either<Failure, void>> signIn({
    required SigninRequest request,
  }) {
    final result = _authRepository.signIn(request: request);
    result.then((resultValue) {
      if (resultValue.isRight()) {
        setState(const AuthenticationState.createPin());
      }
    });
    return result;
  }

  /// Check whether user is logged into the system
  Future<bool> isLoggedIn() {
    return _authRepository.isLoggedIn();
  }

  /// Request current token
  Future<String> get token {
    return _authRepository.token;
  }

  /// Log out from the system
  Future<Either<Failure, void>> logout() async {
    final result = await _authRepository.logout();
    setState(const AuthenticationState.login());
    return result;
  }

  void _initialFetch() {
    _authRepository.trackAndUpdateFCMToken();
  }

  /// SECURITY AND BIOMETRICS
  ///
  ///
  Future<void> setupPin({
    required String pin,
  }) {
    return _authRepository.setupPin(pin: pin);
  }

  Future<bool> checkPin(String value) async {
    final pin = await _authRepository.userPin;
    if (value == pin) {
      setState(const AuthenticationState.authenticated());
      _initialFetch();
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  Future<bool> get isBioAvailable {
    return _authRepository.isBioAvailable;
  }

  Future<void> enableBioAuth() {
    return _authRepository.enableBioAuth();
  }

  Future<bool> get isBioEnabled {
    return _authRepository.isBioEnabled;
  }

  Future<bool> authenticateBio() async {
    final result = await _authRepository.authenticateBio();
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
  ///
  ///
  Future<void> enterBackground() async {
    if (state != const AuthenticationState.authenticated()) {
      return;
    }
    await _localStorageDatasource.writeLastActiveSessionTime(DateTime.now().millisecondsSinceEpoch.toString());
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

    final String? ms = await _localStorageDatasource.readLastActiveSessionTime();
    DateTime lastActive = DateTime.fromMillisecondsSinceEpoch(0);
    if (ms != null && ms.isNotEmpty) {
      lastActive = DateTime.fromMillisecondsSinceEpoch(int.tryParse(ms) ?? 0);
    }
    if (DateTime.now().difference(lastActive).inMinutes > 15) {
      setState(const AuthenticationState.verifyUser());
    } else {
      _initialFetch();
    }
  }
}