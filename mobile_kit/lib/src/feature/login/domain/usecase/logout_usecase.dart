import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';

class LogoutUseCase {
  LogoutUseCase(
    AuthenticationRepository authRepository,
    AlertsRepository alertsRepository,
  )   : _authenticationRepository = authRepository,
        _alertsRepository = alertsRepository,
        super();

  /// Log out from the system
  Future<void> logout() async {
    await _alertsRepository.updatePushToken('');
    await _authenticationRepository.logout();
  }

  final AuthenticationRepository _authenticationRepository;
  final AlertsRepository _alertsRepository;
}
