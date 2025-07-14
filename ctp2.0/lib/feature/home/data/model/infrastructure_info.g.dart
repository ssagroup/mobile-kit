// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infrastructure_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfrastructureInfoImpl _$$InfrastructureInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$InfrastructureInfoImpl(
      status: json['status'] as String?,
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$InfrastructureInfoImplToJson(
        _$InfrastructureInfoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'id': instance.id,
    };
