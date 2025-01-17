import 'dart:io';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthDatasource {
  LocalAuthDatasource({
    LocalAuthentication? auth,
}) : _auth = auth ?? LocalAuthentication();

  final LocalAuthentication _auth;

  Future<bool> get canAuthenticate async {

    final List<BiometricType> availableBiometrics = await _auth.getAvailableBiometrics();
    final isSetupDone = availableBiometrics.isNotEmpty;

    if (!isSetupDone && Platform.isAndroid) {
      try {
        await _auth.authenticate(
          localizedReason: 'Face Id Check',
          options: const AuthenticationOptions(
            biometricOnly: true,
            stickyAuth: true,
            useErrorDialogs: false,
          ),
        );
        return Future.value(true);
      } on PlatformException {
        return Future.value(false);
      }
    }
    return isSetupDone;
  }

  Future<bool> authenticateBio() async {
    try {
      final didAuthenticate = await _auth.authenticate(
        localizedReason: 'Please authenticate',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
          useErrorDialogs: true,
        ),
      );
      return Future.value(didAuthenticate);
    } on PlatformException {
      return Future.value(false);
    }
  }
}
