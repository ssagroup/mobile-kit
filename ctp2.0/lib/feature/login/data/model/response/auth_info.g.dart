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
