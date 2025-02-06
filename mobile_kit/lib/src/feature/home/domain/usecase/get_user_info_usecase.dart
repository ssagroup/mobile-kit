import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/settings_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetUserInfoUseCase {
  GetUserInfoUseCase(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super();

  /// Get User info
  Future<Either<Failure, UserModel>> getUserInfo() async {
    return await _settingsRepository.getUser();
  }

  final SettingsRepository _settingsRepository;
}
