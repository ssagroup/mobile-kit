import 'package:freezed_annotation/freezed_annotation.dart';

part 'control_info.freezed.dart';
part 'control_info.g.dart';

@freezed
class ControlInfo with _$ControlInfo {
  const factory ControlInfo({
    required int id,
    required String name,
    required bool isRunning,
  }) = _ControlInfo;

  factory ControlInfo.fromJson(Map<String, dynamic> json) => _$ControlInfoFromJson(json);
}