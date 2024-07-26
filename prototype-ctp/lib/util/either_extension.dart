import 'package:ctp_mobile/domain/entity/api_status.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';

extension EitherExtension<T> on Either<Failure, T> {

  ApiStatus get foldedApiStatus => fold(
        (failure) => ApiStatus.failure(failure.errorDescription),
        (_) => const ApiStatus.success(),
  );

  AuthStatus get foldedAuthStatus => fold(
        (failure) => AuthStatus.failure(failure.errorDescription, failure == Failure.notAuthorized()),
        (_) => const AuthStatus.success(),
  );

  ApiStatus get foldedApiStatusWithResult => fold(
        (failure) => ApiStatus.failure(failure.errorDescription),
        (success) => ApiStatus.success(success),
  );

  ApiStatus foldedApiStatusWith(Object result) {
    return fold(
          (failure) => ApiStatus.failure(failure.errorDescription),
          (_) => ApiStatus.success(result),
    );
  }

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
}