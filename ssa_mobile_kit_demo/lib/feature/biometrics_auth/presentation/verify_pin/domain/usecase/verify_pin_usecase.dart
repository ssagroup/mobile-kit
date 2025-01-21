import 'package:mobile_kit_demo/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

class VerifyPinUsecase {
  VerifyPinUsecase(
    BiometricsAuthRepository biometricAuthRepository,
    AuthenticationRepository authenticationRepository,
  )   : _biometricAuthRepository = biometricAuthRepository,
        _authenticationRepository = authenticationRepository,
        super();

  Future<bool> checkPin(String value) async {
    final isValid = await _biometricAuthRepository.userPin == value;
    if (isValid) {
      _authenticationRepository.setState(const AuthenticationState.authenticated());
      // _initialFetch();
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  final BiometricsAuthRepository _biometricAuthRepository;
  final AuthenticationRepository _authenticationRepository;
}
