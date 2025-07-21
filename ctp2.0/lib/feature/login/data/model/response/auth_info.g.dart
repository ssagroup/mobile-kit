// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthInfoImpl _$$AuthInfoImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoImpl(
      accessToken: json['accessToken'] as String,
      expireInSeconds: (json['expireInSeconds'] as num).toInt(),
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$AuthInfoImplToJson(_$AuthInfoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expireInSeconds': instance.expireInSeconds,
      'refreshToken': instance.refreshToken,
    };

_$TokenResponseUserImpl _$$TokenResponseUserImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenResponseUserImpl(
      sub: json['sub'] as String?,
      jti: json['jti'] as String,
      givenName: json['given_name'] as String,
      exp: (json['exp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TokenResponseUserImplToJson(
        _$TokenResponseUserImpl instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'jti': instance.jti,
      'given_name': instance.givenName,
      'exp': instance.exp,
    };
