// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_statistic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaticStatisticsInfoImpl _$$StaticStatisticsInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$StaticStatisticsInfoImpl(
      botsAmount: json['botsAmount'] as int,
      tradingTime: json['tradingTime'] as String,
      balance: json['balance'] as String,
      available: json['available'] as String,
      currentlyInUse: json['currentlyInUse'] as String,
      noControls: json['noControls'] as String,
      showNoControl: json['showNoControl'] as bool,
    );

Map<String, dynamic> _$$StaticStatisticsInfoImplToJson(
        _$StaticStatisticsInfoImpl instance) =>
    <String, dynamic>{
      'botsAmount': instance.botsAmount,
      'tradingTime': instance.tradingTime,
      'balance': instance.balance,
      'available': instance.available,
      'currentlyInUse': instance.currentlyInUse,
      'noControls': instance.noControls,
      'showNoControl': instance.showNoControl,
    };
