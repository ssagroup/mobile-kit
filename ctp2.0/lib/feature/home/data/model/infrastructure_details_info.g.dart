// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infrastructure_details_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfrastructureDetailsInfoImpl _$$InfrastructureDetailsInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$InfrastructureDetailsInfoImpl(
      status: json['status'] as String?,
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      panels: (json['panels'] as List<dynamic>)
          .map((e) => PanelInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InfrastructureDetailsInfoImplToJson(
        _$InfrastructureDetailsInfoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'id': instance.id,
      'panels': instance.panels,
    };

_$PanelInfoImpl _$$PanelInfoImplFromJson(Map<String, dynamic> json) =>
    _$PanelInfoImpl(
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      source: SourceInfo.fromJson(json['source'] as Map<String, dynamic>),
      panelSchema: json['panelSchema'] == null
          ? null
          : PanelSchema.fromJson(json['panelSchema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PanelInfoImplToJson(_$PanelInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'source': instance.source,
      'panelSchema': instance.panelSchema,
    };

_$SourceInfoImpl _$$SourceInfoImplFromJson(Map<String, dynamic> json) =>
    _$SourceInfoImpl(
      type: json['type'] as String,
      dashboardUid: json['dashboardUid'] as String,
      panelId: (json['panelId'] as num).toInt(),
    );

Map<String, dynamic> _$$SourceInfoImplToJson(_$SourceInfoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'dashboardUid': instance.dashboardUid,
      'panelId': instance.panelId,
    };

_$PanelSchemaImpl _$$PanelSchemaImplFromJson(Map<String, dynamic> json) =>
    _$PanelSchemaImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$PanelSchemaImplToJson(_$PanelSchemaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
