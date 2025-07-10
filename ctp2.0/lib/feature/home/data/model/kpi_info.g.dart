// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KpiInfoImpl _$$KpiInfoImplFromJson(Map<String, dynamic> json) =>
    _$KpiInfoImpl(
      exchangesCount: (json['exchangesCount'] as num).toInt(),
      accountsCount: (json['accountsCount'] as num).toInt(),
      matchedOrders: json['matchedOrders'] as String,
      allOrders: json['allOrders'] as String,
      turnover: json['turnover'] as String,
      errorsCount: (json['errorsCount'] as num).toInt(),
      commission: (json['commission'] as num).toDouble(),
      pnl: (json['pnl'] as num).toDouble(),
      pnlUp: json['pnlUp'] as bool,
      pnlInvestment: (json['pnlInvestment'] as num).toDouble(),
      pnlInvestmentUp: json['pnlInvestmentUp'] as bool,
      pnlTotal: (json['pnlTotal'] as num).toDouble(),
      pnlTotalUp: json['pnlTotalUp'] as bool,
      roi: (json['roi'] as num).toDouble(),
      roiInvestment: (json['roiInvestment'] as num).toDouble(),
      roiTotal: (json['roiTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$KpiInfoImplToJson(_$KpiInfoImpl instance) =>
    <String, dynamic>{
      'exchangesCount': instance.exchangesCount,
      'accountsCount': instance.accountsCount,
      'matchedOrders': instance.matchedOrders,
      'allOrders': instance.allOrders,
      'turnover': instance.turnover,
      'errorsCount': instance.errorsCount,
      'commission': instance.commission,
      'pnl': instance.pnl,
      'pnlUp': instance.pnlUp,
      'pnlInvestment': instance.pnlInvestment,
      'pnlInvestmentUp': instance.pnlInvestmentUp,
      'pnlTotal': instance.pnlTotal,
      'pnlTotalUp': instance.pnlTotalUp,
      'roi': instance.roi,
      'roiInvestment': instance.roiInvestment,
      'roiTotal': instance.roiTotal,
    };
