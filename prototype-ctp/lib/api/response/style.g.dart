// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StyleInfoImpl _$$StyleInfoImplFromJson(Map<String, dynamic> json) =>
    _$StyleInfoImpl(
      colors: ColorsInfo.fromJson(json['colors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StyleInfoImplToJson(_$StyleInfoImpl instance) =>
    <String, dynamic>{
      'colors': instance.colors,
    };

_$ColorsInfoImpl _$$ColorsInfoImplFromJson(Map<String, dynamic> json) =>
    _$ColorsInfoImpl(
      positve: json['positve'] as String,
      negative: json['negative'] as String,
    );

Map<String, dynamic> _$$ColorsInfoImplToJson(_$ColorsInfoImpl instance) =>
    <String, dynamic>{
      'positve': instance.positve,
      'negative': instance.negative,
    };
