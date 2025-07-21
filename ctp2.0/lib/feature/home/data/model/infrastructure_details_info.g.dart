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
      fieldConfig:
          FieldConfig.fromJson(json['fieldConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PanelSchemaImplToJson(_$PanelSchemaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'fieldConfig': instance.fieldConfig,
    };

_$FieldConfigImpl _$$FieldConfigImplFromJson(Map<String, dynamic> json) =>
    _$FieldConfigImpl(
      defaults: Defaults.fromJson(json['defaults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FieldConfigImplToJson(_$FieldConfigImpl instance) =>
    <String, dynamic>{
      'defaults': instance.defaults,
    };

_$DefaultsImpl _$$DefaultsImplFromJson(Map<String, dynamic> json) =>
    _$DefaultsImpl(
      unit: json['unit'] as String?,
      custom: json['custom'] == null
          ? null
          : Custom.fromJson(json['custom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DefaultsImplToJson(_$DefaultsImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'custom': instance.custom,
    };

_$CustomImpl _$$CustomImplFromJson(Map<String, dynamic> json) => _$CustomImpl(
      axisLabel: json['axisLabel'] as String?,
    );

Map<String, dynamic> _$$CustomImplToJson(_$CustomImpl instance) =>
    <String, dynamic>{
      'axisLabel': instance.axisLabel,
    };
