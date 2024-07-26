import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_statistic_response.freezed.dart';
part 'dynamic_statistic_response.g.dart';

@freezed
class DynamicStatisticsInfo with _$DynamicStatisticsInfo {
  const factory DynamicStatisticsInfo({
    required String cumulativePnl,
    required bool? cumulativePnlUp,
    required String roi,
    required String bankTurnover,
    required String turnover,
    required String maxInUse,
    required String maxInNoControl,
    required String totalBotHours,
    required String orders,
    required String noControlInstantLoss,
    required bool showNoControl,
  }) = _DynamicStatisticsInfo;

  factory DynamicStatisticsInfo.fromJson(Map<String, dynamic> json) => _$DynamicStatisticsInfoFromJson(json);
}