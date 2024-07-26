// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmptyResponseImpl _$$EmptyResponseImplFromJson(Map<String, dynamic> json) =>
    _$EmptyResponseImpl();

Map<String, dynamic> _$$EmptyResponseImplToJson(_$EmptyResponseImpl instance) =>
    <String, dynamic>{};

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessResponseImpl(
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
    };

_$AuthInfoImpl _$$AuthInfoImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoImpl(
      accessToken: json['accessToken'] as String,
      expireInSeconds: json['expireInSeconds'] as int,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$AuthInfoImplToJson(_$AuthInfoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expireInSeconds': instance.expireInSeconds,
      'refreshToken': instance.refreshToken,
    };
