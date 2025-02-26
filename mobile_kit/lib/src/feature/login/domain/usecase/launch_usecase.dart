import 'dart:async';

import 'package:mobile_kit/src/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_notifier.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';

class LaunchUseCase {
  LaunchUseCase(
    AuthenticationRepository authRepository,
    BiometricsAuthRepository biometricRepository,
    AlertsRepository alertsRepository,
  )   : _authenticationRepository = authRepository,
        _biometricRepository = biometricRepository,
        _alertsRepository = alertsRepository,
        super();

  /// Perform initialization
  Future<void> invoke() async {
    _subscription = _authenticationRepository.userStream.listen((user) async {
      final isLoggedIn = await _authenticationRepository.isLoggedIn;
      final bool isPinSetup = await _biometricRepository.isPinSetup();
      if (isLoggedIn && isPinSetup) {
        _authenticationRepository.setState(const AuthenticationState.verifyUser());
      } else if (isLoggedIn && !isPinSetup) {
        _authenticationRepository.setState(const AuthenticationState.createPin());
      } else {
        _authenticationRepository.setState(const AuthenticationState.login());
      }
      if (isLoggedIn) {
        await _alertsRepository.requestPushNotificationToken();
      }
    });
  }

  final AuthenticationRepository _authenticationRepository;
  final BiometricsAuthRepository _biometricRepository;
  final AlertsRepository _alertsRepository;
  StreamSubscription<UserModel?>? _subscription;
}
