// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_chart_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KpiChartInfoImpl _$$KpiChartInfoImplFromJson(Map<String, dynamic> json) =>
    _$KpiChartInfoImpl(
      pnl: (json['pnl'] as num).toDouble(),
      pnlInvestment: (json['pnlInvestment'] as num).toDouble(),
      pnlTotal: (json['pnlTotal'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$KpiChartInfoImplToJson(_$KpiChartInfoImpl instance) =>
    <String, dynamic>{
      'pnl': instance.pnl,
      'pnlInvestment': instance.pnlInvestment,
      'pnlTotal': instance.pnlTotal,
      'timestamp': instance.timestamp.toIso8601String(),
    };
