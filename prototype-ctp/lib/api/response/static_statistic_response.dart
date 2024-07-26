import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_statistic_response.freezed.dart';
part 'static_statistic_response.g.dart';

@freezed
class StaticStatisticsInfo with _$StaticStatisticsInfo {
  const factory StaticStatisticsInfo({
    required int botsAmount,
    required String tradingTime,
    required String balance,
    required String available,
    required String currentlyInUse,
    required String noControls,
    required bool showNoControl,
  }) = _StaticStatisticsInfo;

  factory StaticStatisticsInfo.fromJson(Map<String, dynamic> json) => _$StaticStatisticsInfoFromJson(json);
}