import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_notifier.dart';

class EnterForegroundUseCase {
  EnterForegroundUseCase(
      AuthenticationRepository authRepository,
      BiometricsAuthRepository biometricRepository,
      )   : _authenticationRepository = authRepository,
        _biometricRepository = biometricRepository,
        super();

  Future<void> enterForeground() async {
    if (await _authenticationRepository.currentState != const AuthenticationState.authenticated()) {
      return;
    }

    if (!_authenticationRepository.isInBackground) {
      return;
    }
    _authenticationRepository.isInBackground = false;

    final ms = await _biometricRepository.readLastActiveSessionTime();
    DateTime lastActive = DateTime.fromMillisecondsSinceEpoch(0);
    if (ms.isNotEmpty) {
      lastActive = DateTime.fromMillisecondsSinceEpoch(int.tryParse(ms) ?? 0);
    }
    if (DateTime.now().difference(lastActive).inMinutes > 15) {
      _authenticationRepository.setState(const AuthenticationState.verifyUser());
    } else {
      // _initialFetch();
    }
  }

  final AuthenticationRepository _authenticationRepository;
  final BiometricsAuthRepository _biometricRepository;
}
