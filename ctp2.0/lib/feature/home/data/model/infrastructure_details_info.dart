import 'package:freezed_annotation/freezed_annotation.dart';

part 'infrastructure_details_info.freezed.dart';
part 'infrastructure_details_info.g.dart';

@freezed
class InfrastructureDetailsInfo with _$InfrastructureDetailsInfo {
  const factory InfrastructureDetailsInfo({
    required String? status,
    required String title,
    required int id,
    required List<PanelInfo> panels,
  }) = _InfrastructureDetailsInfo;

  factory InfrastructureDetailsInfo.fromJson(Map<String, dynamic> json) => _$InfrastructureDetailsInfoFromJson(json);
}

@freezed
class PanelInfo with _$PanelInfo {
  const factory PanelInfo({
    required String title,
    required int id,
    required SourceInfo source,
    required PanelSchema? panelSchema,
  }) = _PanelInfo;

  factory PanelInfo.fromJson(Map<String, dynamic> json) => _$PanelInfoFromJson(json);
}

@freezed
class SourceInfo with _$SourceInfo {
  const factory SourceInfo({
    required String type,
    required String dashboardUid,
    required int panelId,
  }) = _SourceInfo;

  factory SourceInfo.fromJson(Map<String, dynamic> json) => _$SourceInfoFromJson(json);
}

@freezed
class PanelSchema with _$PanelSchema {
  const factory PanelSchema({
    required String type,
    required FieldConfig fieldConfig,
  }) = _PanelSchema;

  factory PanelSchema.fromJson(Map<String, dynamic> json) => _$PanelSchemaFromJson(json);
}

@freezed
class FieldConfig with _$FieldConfig {
  const factory FieldConfig({
    required Defaults defaults,
  }) = _FieldConfig;

  factory FieldConfig.fromJson(Map<String, dynamic> json) => _$FieldConfigFromJson(json);
}

@freezed
class Defaults with _$Defaults {
  const factory Defaults({
    String? unit,
    Custom? custom,
  }) = _Defaults;

  factory Defaults.fromJson(Map<String, dynamic> json) => _$DefaultsFromJson(json);
}

@freezed
class Custom with _$Custom {
  const factory Custom({
    String? axisLabel,
  }) = _Custom;

  factory Custom.fromJson(Map<String, dynamic> json) => _$CustomFromJson(json);
}