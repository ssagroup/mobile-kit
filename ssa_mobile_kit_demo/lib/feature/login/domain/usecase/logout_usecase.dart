import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';

class LogoutUsecase {
  LogoutUsecase(
      AuthenticationRepository authRepository,
      )   : _authenticationRepository = authRepository,
        super();

  /// Log out from the system
  Future<void> logout() async {
    return await _authenticationRepository.logout();
  }

  final AuthenticationRepository _authenticationRepository;
}
