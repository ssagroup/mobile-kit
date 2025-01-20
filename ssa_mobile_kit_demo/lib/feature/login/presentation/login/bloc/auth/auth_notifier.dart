import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';
part 'auth_state.dart';

class AuthenticationNotifier with ChangeNotifier {

  bool isInBackground = false;

  late AuthenticationState _state;

  AuthenticationState get state => _state;

  void setState(AuthenticationState state) {
    _state = state;
    notifyListeners();
  }

  //
  // void _initialFetch() {
  //   // _authRepository.trackAndUpdateFCMToken();
  // }

  // /// SECURITY AND BIOMETRICS
  // Future<void> setupPin({
  //   required String pin,
  // }) {
  //   return _biometricsUseCase.setupPin(pin: pin);
  // }
  //
  // Future<bool> checkPin(String value) async {
  //   final isValid = await _biometricsUseCase.checkPin(value);
  //   if (isValid) {
  //     _state = const AuthenticationState.authenticated();
  //     _initialFetch();
  //     return Future.value(true);
  //   } else {
  //     return Future.value(false);
  //   }
  // }
  //
  // Future<bool> get isBioAvailable {
  //   return _biometricsUseCase.isBioAvailable;
  // }
  //
  // Future<void> enableBioAuth() {
  //   return _biometricsUseCase.enableBioAuth();
  // }
  //
  // Future<bool> get isBioEnabled {
  //   return _biometricsUseCase.isBioEnabled;
  // }
  //
  // Future<bool> authenticateBio() async {
  //   final result = await _biometricsUseCase.authenticateBio();
  //   if (result) {
  //     _state = const AuthenticationState.authenticated();
  //     _initialFetch();
  //   }
  //   return result;
  // }
  //
  // void completeBioSetup() {
  //   _state = const AuthenticationState.authenticated();
  //   _initialFetch();
  // }

}
