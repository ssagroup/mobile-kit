import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:rxdart/rxdart.dart';

class UpdatePushTokenUseCase {
  UpdatePushTokenUseCase(
    AuthenticationRepository authRepository,
    AlertsRepository alertsRepository,
  )   : _authenticationRepository = authRepository,
        _alertsRepository = alertsRepository;

  /// Update PushToken
  Future<void> invoke() async {
    CombineLatestStream.list<dynamic>(
        [_authenticationRepository.userStream.whereNotNull(), _alertsRepository.pushTokenStream.whereNotNull()])
      ..listen(
        (value) async {
          String pushToken = value[1];
          await _alertsRepository.updatePushToken(pushToken);
        },
      );
  }

  final AlertsRepository _alertsRepository;
  final AuthenticationRepository _authenticationRepository;
}
