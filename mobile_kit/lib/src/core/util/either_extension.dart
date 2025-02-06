import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

extension EitherExtension<T> on Either<Failure, T> {
  void ifRight(void Function(T) function) {
    fold(
      (_) {
        return;
      },
      function,
    );
  }

  void ifLeft(void Function(Failure) function) {
    fold(
      function,
      (_) {
        return;
      },
    );
  }

  ApiStatus get foldedApiStatus => fold(
        (failure) => ApiStatus.failure(failure.errorDescription),
        (_) => const ApiStatus.success(),
  );

  AuthStatus get foldedAuthStatus => fold(
        (failure) => AuthStatus.failure(failure.errorDescription, failure == Failure.notAuthorized()),
        (_) => const AuthStatus.success(),
  );
}
