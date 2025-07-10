import 'package:freezed_annotation/freezed_annotation.dart';

part 'kpi_info.freezed.dart';
part 'kpi_info.g.dart';

@freezed
class KpiInfo with _$KpiInfo {
  const factory KpiInfo({
    required int exchangesCount,
    required int accountsCount,
    required String matchedOrders,
    required String allOrders,
    required String turnover,
    required int errorsCount,
    required double commission,
    required double pnl,
    required bool pnlUp,
    required double pnlInvestment,
    required bool pnlInvestmentUp,
    required double pnlTotal,
    required bool pnlTotalUp,
    required double roi,
    required double roiInvestment,
    required double roiTotal,
  }) = _KpiInfo;

  factory KpiInfo.fromJson(Map<String, dynamic> json) => _$KpiInfoFromJson(json);
}

