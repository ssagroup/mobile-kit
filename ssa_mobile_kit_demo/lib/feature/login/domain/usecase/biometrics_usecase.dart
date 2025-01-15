import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';

class BiometricsUseCase {
  BiometricsUseCase(
      AuthenticationRepository authRepository,
      )   : _authRepository = authRepository,
        super();

  Future<void> setupPin({
    required String pin,
  }) {
    return _authRepository.setupPin(pin: pin);
  }

  Future<bool> checkPin(String value) async {
    final pin = await _authRepository.userPin;
    return Future.value(value == pin);
  }

  Future<bool> authenticateBio() async {
    final result = await _authRepository.authenticateBio();
    return result;
  }

  Future<void> enableBioAuth() {
    return _authRepository.enableBioAuth();
  }

  Future<bool> get isBioAvailable {
    return _authRepository.isBioAvailable;
  }

  Future<bool> get isBioEnabled {
    return _authRepository.isBioEnabled;
  }

  final AuthenticationRepository _authRepository;
}