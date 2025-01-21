import 'package:mobile_kit_demo/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

class BiometricsUsecase {
  BiometricsUsecase(
      BiometricsAuthRepository biometricAuthRepository,
      AuthenticationRepository authenticationRepository,
      )   : _biometricAuthRepository = biometricAuthRepository,
            _authenticationRepository = authenticationRepository,
        super();

  Future<void> authenticateBio() async {
    final result = await _biometricAuthRepository.authenticateBio();
    if(result) {
      _authenticationRepository.setState(const AuthenticationState.authenticated());
    }
  }

  Future<void> enableBioAuth() {
    return _biometricAuthRepository.enableBioAuth();
  }

  Future<bool> get isBioAvailable {
    return _biometricAuthRepository.isBioAvailable;
  }

  Future<bool> get isBioEnabled {
    return _biometricAuthRepository.isBioEnabled;
  }

  void completeBioSetup() {
    _authenticationRepository.setState(const AuthenticationState.authenticated());
  }

  final BiometricsAuthRepository _biometricAuthRepository;
  final AuthenticationRepository _authenticationRepository;
}