// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'control_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ControlInfoImpl _$$ControlInfoImplFromJson(Map<String, dynamic> json) =>
    _$ControlInfoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      isRunning: json['isRunning'] as bool,
    );

Map<String, dynamic> _$$ControlInfoImplToJson(_$ControlInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isRunning': instance.isRunning,
    };
