
import 'package:collection/collection.dart';
import 'package:ctp_mobile/util/optional.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_response.freezed.dart';
part 'bot_response.g.dart';

@freezed
class BotInfo with _$BotInfo {
  const factory BotInfo({
    required String name,
    required String platform,
    required int tradingAccountId,
    required String strategy,
    required String instrument,
    required bool isRunning,
    required String? statusAlias,
    required String statusColor,
    required MobileStatistics mobileStatistics,
    required int id,
    @Default('-') String lastOrderDuration,
    required bool isActionsDisabled,
    @Default('-') String lastRunDuration,
    required String formattedOrderSize,
  }) = _BotInfo;

  const BotInfo._();

  factory BotInfo.fromJson(Map<String, dynamic> json) => _$BotInfoFromJson(json);

  String get firstInstrument {
    return instrument.split('/').first.orEmpty;
  }

  String get secondInstrument {
    return instrument.split('/').last.orEmpty;
  }
}

extension BotList on List<BotInfo> {
  List<BotInfo> get sortedByName {
    return sorted((a, b) => a.name.compareTo(b.name));
  }
}

@freezed
class MobileStatistics with _$MobileStatistics {
  const factory MobileStatistics({
    required String roi,
    required String pnl,
    required String orders,
    required String? turnover,
    required String hourlyPnl,
    required bool? pnlUp,
    required List<String> available,
    required List<String> currentlyInUse,
    required List<String> maxInUse,
    required bool showNoControl,
    required List<String> noControlInstantLoss,
    required List<String> maxInNoControl,
    required List<String> noControlOrders,
    required List<String> noControls,
  }) = _MobileStatistics;

  const MobileStatistics._();

  factory MobileStatistics.fromJson(Map<String, dynamic> json) => _$MobileStatisticsFromJson(json);

  String get ncOrdersFirst {
    return 'Long ' + noControlOrders.first.orEmpty;
  }

  String get ncOrdersSecond {
    return 'Short ' + noControlOrders.last.orEmpty;
  }
}