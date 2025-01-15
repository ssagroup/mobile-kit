import 'package:dartz/dartz.dart';
import 'package:mobile_kit_demo/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/shared/domain/entity/failure.dart';

class LoginUseCase {
  LoginUseCase(
    AuthenticationRepository authRepository,
  )   : _authRepository = authRepository,
        super();

  /// Log in to the system
  Future<Either<Failure, void>> signIn({
    required AuthRequest request,
  }) async {
    try {
      await _authRepository.signIn(request: request);
      return const Right(unit);
    } on CredentialsInvalidException catch (_) {
      return Left<Failure, void>(
        Failure.notAuthorized(),
      );
    } catch (e) {
      return Left<Failure, void>(
        Failure.server(-1001, 'Auth error'),
      );
    }
  }

  /// Stream to authentication state changes
  Stream<UserModel?> authStateChanges() {
    return _authRepository.authStateChanges().map((user) {
      if (user == null) {
        _authRepository.clear();
      }
      return user;
    });
  }

  /// Log out from the system
  Future<void> logout() async {
    return await _authRepository.logout();
  }

  /// Check whether user is logged into the system
  Future<bool> isLoggedIn() {
    return _authRepository.isLoggedIn();
  }

  final AuthenticationRepository _authRepository;
}
