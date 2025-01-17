import 'package:mobile_kit_demo/feature/login/domain/repository/biometrics_auth_repository.dart';

class BiometricsUseCase {
  BiometricsUseCase(
      BiometricsAuthRepository biometricAuthRepository,
      )   : _biometricAuthRepository = biometricAuthRepository,
        super();

  Future<void> setupPin({
    required String pin,
  }) {
    return _biometricAuthRepository.setupPin(pin: pin);
  }

  Future<bool> checkPin(String value) async {
    final pin = await _biometricAuthRepository.userPin;
    return Future.value(value == pin);
  }

  Future<bool> authenticateBio() async {
    final result = await _biometricAuthRepository.authenticateBio();
    return result;
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

  final BiometricsAuthRepository _biometricAuthRepository;
}