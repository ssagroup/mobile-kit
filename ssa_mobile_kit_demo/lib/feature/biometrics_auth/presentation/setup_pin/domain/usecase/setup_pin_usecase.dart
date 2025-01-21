import 'package:mobile_kit_demo/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';

class SetupPinUsecase {
  SetupPinUsecase(
      BiometricsAuthRepository biometricAuthRepository,
      )   : _biometricAuthRepository = biometricAuthRepository,
        super();

  Future<void> setupPin({
    required String pin,
  }) {
    return _biometricAuthRepository.setupPin(pin: pin);
  }

  final BiometricsAuthRepository _biometricAuthRepository;
}