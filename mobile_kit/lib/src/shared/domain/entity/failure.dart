import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  Failure._();

  factory Failure.notAuthorized() = NotAuthorizedFailure;

  factory Failure.wrongResponse() = WrongResponseFailure;

  factory Failure.server(int code, [@Default('') String message]) = ServerFailure;

  factory Failure.socket() = SocketFailure;

  factory Failure.storage() = StorageFailure;

  factory Failure.unknown(Object error) = UnknownFailure;

  factory Failure.wrongCredentials() = WrongCredentialsFailure;

  String get errorDescription => map(
    notAuthorized: (_) => 'Your session has expired. Please sign in again.',
    wrongResponse: (_) => 'Our app is under development. Please try again later or contact support',
    server: (err) => err.message,
    socket: (_) => 'Please check your internet connection',
    storage: (_) => 'Error occurred',
    unknown: (err) => err.error.toString(),
    wrongCredentials: (_) => 'Invalid credentials. Please try again',
  );
}


/// Thrown by remote data sources in case server connection failed
///
class ServerException {

  ServerException(this.code, this.message);

  int code;
  String message;
}

class UnknownException {

  UnknownException(this.error);

  Object error;
}


/// Thrown by local data sources in case storage interaction failed
class StorageException {}

/// Thrown by local data sources in case requested data was not found in storage
class DataNotFoundException extends StorageException {}

/// Thrown by remote data sources when authentication with the token failed
class TokenExpiredException extends ServerException {
  TokenExpiredException() : super(401, 'Not Authorized');
}

/// Thrown by remote data sources when provided credentials are invalid
class CredentialsInvalidException {}
