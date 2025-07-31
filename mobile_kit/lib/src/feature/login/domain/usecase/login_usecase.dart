import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class LoginUseCase {
  LoginUseCase(
      authRepository,
  )   : _authenticationRepository = authRepository,
        super();

  /// Log in to the system
  Future<Either<Failure, void>> signIn({
    required AuthRequest request,
  }) async {
    try {
      return _authenticationRepository.signIn(request: request);
    } on CredentialsInvalidException catch (_) {
      return Left<Failure, void>(
        Failure.wrongCredentials(),
      );
    } catch (e) {
      return Left<Failure, void>(
        Failure.server(-1001, 'Auth error'),
      );
    }
  }

  final AuthenticationRepository _authenticationRepository;
}
