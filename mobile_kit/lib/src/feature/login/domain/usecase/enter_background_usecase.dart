import 'package:mobile_kit/src/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_notifier.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';

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
