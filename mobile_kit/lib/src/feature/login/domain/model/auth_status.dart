sealed class AuthStatus {}

class AuthStatusNone implements AuthStatus {}

class AuthStatusSuccess implements AuthStatus {
  AuthStatusSuccess([this.result]);

  late final Object? result;
}

class AuthStatusFailure implements AuthStatus {
  AuthStatusFailure(this.message, this.needLogout);

  final String message;
  final bool needLogout;
}

sealed class ApiStatus {}

class ApiStatusNone implements ApiStatus {}

class ApiStatusSuccess implements ApiStatus {
  ApiStatusSuccess([this.result = null]);
  late final Object? result;
}

class ApiStatusFailure implements ApiStatus {
  ApiStatusFailure([this.message = null]);
  late final String? message;
}
