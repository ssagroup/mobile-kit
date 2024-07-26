
import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

@freezed
class EmptyResponse with _$EmptyResponse {
  const factory EmptyResponse() = _EmptyResponse;

  factory EmptyResponse.fromJson(Map<String, dynamic> json) => _$EmptyResponseFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    required bool success
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) => _$SuccessResponseFromJson(json);
}

@freezed
class AuthInfo with _$AuthInfo {
  const factory AuthInfo({
    required String accessToken,
    required int expireInSeconds,
    required String refreshToken
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) => _$AuthInfoFromJson(json);
}