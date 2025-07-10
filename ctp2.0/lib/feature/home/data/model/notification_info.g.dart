// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationInfoImpl _$$NotificationInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationInfoImpl(
      title: json['title'] as String,
      text: json['text'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
      creationTime: DateTime.parse(json['creationTime'] as String),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$NotificationInfoImplToJson(
        _$NotificationInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'readAt': instance.readAt?.toIso8601String(),
      'creationTime': instance.creationTime.toIso8601String(),
      'id': instance.id,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.Informational: 'Informational',
  NotificationType.Error: 'Error',
  NotificationType.Warning: 'Warning',
};
