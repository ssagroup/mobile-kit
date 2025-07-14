import 'package:freezed_annotation/freezed_annotation.dart';

part 'infrastructure_info.freezed.dart';
part 'infrastructure_info.g.dart';

@freezed
class InfrastructureInfo with _$InfrastructureInfo {
  const factory InfrastructureInfo({
    required String? status,
    required String title,
    required int id, // dashboardId
  }) = _InfrastructureInfo;

  factory InfrastructureInfo.fromJson(Map<String, dynamic> json) => _$InfrastructureInfoFromJson(json);
}