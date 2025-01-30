import 'package:mobile_kit/src/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';

class GetUserInfoUseCase {
  GetUserInfoUseCase(
      AuthenticationRepository authRepository,
      )   : _authenticationRepository = authRepository,
        super();

  /// Get User info
  Future<UserModel?> getUserInfo() async {
    return await _authenticationRepository.currentUser;
  }

  final AuthenticationRepository _authenticationRepository;
}
