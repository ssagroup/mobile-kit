import 'package:dartz/dartz.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/shared/domain/entity/failure.dart';

class LoginUseCase {
  LoginUseCase(
    AuthenticationRepository authRepository,
  )   : _authenticationRepository = authRepository,
        super();

  /// Log in to the system
  Future<Either<Failure, void>> signIn({
    required AuthRequest request,
  }) async {
    try {
      await _authenticationRepository.signIn(request: request);
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

  final AuthenticationRepository _authenticationRepository;
}
