import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:mobile_kit/mobile_kit.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  const factory AuthInfo({required String accessToken, required int expireInSeconds, required String refreshToken}) =
      _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) => _$AuthInfoFromJson(json);

  const AuthInfo._();

  TokenResponseUser get user {
    try {
      final Map<String, dynamic> json = JwtDecoder.decode(accessToken);
      final responseUser = TokenResponseUser.fromJson(json);
      return responseUser;
    } on Object catch (_) {
      throw ServerException(0, 'Invalid token user. JWT Token decode error');
    }
  }
}

@freezed
@immutable
class TokenResponseUser with _$TokenResponseUser {
  const factory TokenResponseUser({
    required String? sub,
    required String jti,
    @JsonKey(name: 'given_name') required String givenName,
    required int? exp,
  }) = _TokenResponseUser;

  factory TokenResponseUser.fromJson(Map<String, dynamic> json) => _$TokenResponseUserFromJson(json);

  const TokenResponseUser._();

  UserModel toUserModel({
    required final String email,
    required final String token,
    required final String refreshToken,
  }) {
    return UserModel(
      email: email,
      uid: '',
      userName: givenName,
      authToken: token,
      refreshToken: refreshToken,
    );
  }
}
