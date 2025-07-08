import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  const factory AuthInfo({
    required String accessToken,
    required int expireInSeconds,
    required String refreshToken
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) => _$AuthInfoFromJson(json);
}