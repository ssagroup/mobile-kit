import 'package:mobile_kit_demo/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

class EnterBackgroundUseCase {
  EnterBackgroundUseCase(
    AuthenticationRepository authRepository,
    BiometricsAuthRepository biometricRepository,
  )   : _authenticationRepository = authRepository,
        _biometricRepository = biometricRepository,
        super();

  Future<void> enterBackground() async {
    if (await _authenticationRepository.currentState != const AuthenticationState.authenticated()) {
      return;
    }

    await _biometricRepository.writeLastActiveSessionTime(DateTime.now().millisecondsSinceEpoch.toString());
    _authenticationRepository.isInBackground = true;
  }

  final AuthenticationRepository _authenticationRepository;
  final BiometricsAuthRepository _biometricRepository;
}
