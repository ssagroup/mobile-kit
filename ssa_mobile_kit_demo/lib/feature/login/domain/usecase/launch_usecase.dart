import 'dart:async';

import 'package:mobile_kit_demo/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

class LaunchUseCase {
  LaunchUseCase(
    AuthenticationRepository authRepository,
    BiometricsAuthRepository biometricRepository,
  )   : _authenticationRepository = authRepository,
        _biometricRepository = biometricRepository,
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
    });
  }

  final AuthenticationRepository _authenticationRepository;
  final BiometricsAuthRepository _biometricRepository;
  StreamSubscription<UserModel?>? _subscription;
}
