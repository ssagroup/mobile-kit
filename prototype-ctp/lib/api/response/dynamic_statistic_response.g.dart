// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_statistic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicStatisticsInfoImpl _$$DynamicStatisticsInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicStatisticsInfoImpl(
      cumulativePnl: json['cumulativePnl'] as String,
      cumulativePnlUp: json['cumulativePnlUp'] as bool?,
      roi: json['roi'] as String,
      bankTurnover: json['bankTurnover'] as String,
      turnover: json['turnover'] as String,
      maxInUse: json['maxInUse'] as String,
      maxInNoControl: json['maxInNoControl'] as String,
      totalBotHours: json['totalBotHours'] as String,
      orders: json['orders'] as String,
      noControlInstantLoss: json['noControlInstantLoss'] as String,
      showNoControl: json['showNoControl'] as bool,
    );

Map<String, dynamic> _$$DynamicStatisticsInfoImplToJson(
        _$DynamicStatisticsInfoImpl instance) =>
    <String, dynamic>{
      'cumulativePnl': instance.cumulativePnl,
      'cumulativePnlUp': instance.cumulativePnlUp,
      'roi': instance.roi,
      'bankTurnover': instance.bankTurnover,
      'turnover': instance.turnover,
      'maxInUse': instance.maxInUse,
      'maxInNoControl': instance.maxInNoControl,
      'totalBotHours': instance.totalBotHours,
      'orders': instance.orders,
      'noControlInstantLoss': instance.noControlInstantLoss,
      'showNoControl': instance.showNoControl,
    };
