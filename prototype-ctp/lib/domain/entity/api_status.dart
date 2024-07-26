import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.none() = AuthStatusNone;
  const factory AuthStatus.success([Object? result]) = AuthStatusSuccess;
  const factory AuthStatus.failure(String message, bool needLogout) = AuthStatusFailure;
}

@freezed
class ApiStatus with _$ApiStatus {
  const factory ApiStatus.none() = ApiStatusNone;
  const factory ApiStatus.success([Object? result]) = ApiStatusSuccess;
  const factory ApiStatus.failure(String message) = ApiStatusFailure;
}