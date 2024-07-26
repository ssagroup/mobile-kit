// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotInfoImpl _$$BotInfoImplFromJson(Map<String, dynamic> json) =>
    _$BotInfoImpl(
      name: json['name'] as String,
      platform: json['platform'] as String,
      tradingAccountId: json['tradingAccountId'] as int,
      strategy: json['strategy'] as String,
      instrument: json['instrument'] as String,
      isRunning: json['isRunning'] as bool,
      statusAlias: json['statusAlias'] as String?,
      statusColor: json['statusColor'] as String,
      mobileStatistics: MobileStatistics.fromJson(
          json['mobileStatistics'] as Map<String, dynamic>),
      id: json['id'] as int,
      lastOrderDuration: json['lastOrderDuration'] as String? ?? '-',
      isActionsDisabled: json['isActionsDisabled'] as bool,
      lastRunDuration: json['lastRunDuration'] as String? ?? '-',
      formattedOrderSize: json['formattedOrderSize'] as String,
    );

Map<String, dynamic> _$$BotInfoImplToJson(_$BotInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'platform': instance.platform,
      'tradingAccountId': instance.tradingAccountId,
      'strategy': instance.strategy,
      'instrument': instance.instrument,
      'isRunning': instance.isRunning,
      'statusAlias': instance.statusAlias,
      'statusColor': instance.statusColor,
      'mobileStatistics': instance.mobileStatistics,
      'id': instance.id,
      'lastOrderDuration': instance.lastOrderDuration,
      'isActionsDisabled': instance.isActionsDisabled,
      'lastRunDuration': instance.lastRunDuration,
      'formattedOrderSize': instance.formattedOrderSize,
    };

_$MobileStatisticsImpl _$$MobileStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileStatisticsImpl(
      roi: json['roi'] as String,
      pnl: json['pnl'] as String,
      orders: json['orders'] as String,
      turnover: json['turnover'] as String?,
      hourlyPnl: json['hourlyPnl'] as String,
      pnlUp: json['pnlUp'] as bool?,
      available:
          (json['available'] as List<dynamic>).map((e) => e as String).toList(),
      currentlyInUse: (json['currentlyInUse'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      maxInUse:
          (json['maxInUse'] as List<dynamic>).map((e) => e as String).toList(),
      showNoControl: json['showNoControl'] as bool,
      noControlInstantLoss: (json['noControlInstantLoss'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      maxInNoControl: (json['maxInNoControl'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      noControlOrders: (json['noControlOrders'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      noControls: (json['noControls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MobileStatisticsImplToJson(
        _$MobileStatisticsImpl instance) =>
    <String, dynamic>{
      'roi': instance.roi,
      'pnl': instance.pnl,
      'orders': instance.orders,
      'turnover': instance.turnover,
      'hourlyPnl': instance.hourlyPnl,
      'pnlUp': instance.pnlUp,
      'available': instance.available,
      'currentlyInUse': instance.currentlyInUse,
      'maxInUse': instance.maxInUse,
      'showNoControl': instance.showNoControl,
      'noControlInstantLoss': instance.noControlInstantLoss,
      'maxInNoControl': instance.maxInNoControl,
      'noControlOrders': instance.noControlOrders,
      'noControls': instance.noControls,
    };
