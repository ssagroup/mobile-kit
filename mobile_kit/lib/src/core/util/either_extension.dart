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

  ifRightAsync(Function(T) function) async {
    await fold(
      (_) {
        return;
      },
      await function,
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
        (failure) => ApiStatusFailure(failure.errorDescription),
        (_) => ApiStatusSuccess(),
      );

  AuthStatus get foldedAuthStatus => fold(
        (failure) => AuthStatusFailure(failure.errorDescription, failure == Failure.notAuthorized()),
        (_) => AuthStatusSuccess(),
      );

  ApiStatus get foldedApiStatusWithResult => fold(
        (failure) => ApiStatusFailure(failure.errorDescription),
        (success) => ApiStatusSuccess(success),
      );
}
