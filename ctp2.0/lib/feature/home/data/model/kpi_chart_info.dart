import 'package:freezed_annotation/freezed_annotation.dart';

part 'kpi_chart_info.freezed.dart';
part 'kpi_chart_info.g.dart';

@freezed
class KpiChartInfo with _$KpiChartInfo {
  const factory KpiChartInfo({
    required double pnl,
    required double pnlInvestment,
    required double pnlTotal,
    required DateTime timestamp,
  }) = _KpiChartInfo;

  factory KpiChartInfo.fromJson(Map<String, dynamic> json) => _$KpiChartInfoFromJson(json);
}