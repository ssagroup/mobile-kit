
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/util/string_extension.dart';

enum BotDynamicStatisticParameter {
  bankTurnover,
  cumulativePNL,
  roi,
  turnover,
  maxInUse,
  maxInNoControl,
  totalBotHours,
  orders,
  noControlInstantLoss,
}

extension BotDynamicStatisticParameterExtension on BotDynamicStatisticParameter {
  String get parameterName {
    switch (this) {
      case BotDynamicStatisticParameter.bankTurnover:
        return 'Bank Turnover';
      case BotDynamicStatisticParameter.cumulativePNL:
        return 'Cumulative PNL';
      case BotDynamicStatisticParameter.roi:
        return name.toUpperCase();
      case BotDynamicStatisticParameter.turnover:
        return name.capitalized;
      case BotDynamicStatisticParameter.totalBotHours:
        return 'Total bot hours';
      case BotDynamicStatisticParameter.maxInUse:
        return 'Max in use';
      case BotDynamicStatisticParameter.orders:
        return name.capitalized;
      case BotDynamicStatisticParameter.noControlInstantLoss:
        return 'NC inst loss';
      case BotDynamicStatisticParameter.maxInNoControl:
        return 'Max in NC';
    }
  }

  String statisticValue(DynamicStatisticsInfo info) {
    switch (this) {
      case BotDynamicStatisticParameter.bankTurnover:
        return info.bankTurnover;
      case BotDynamicStatisticParameter.cumulativePNL:
        return info.cumulativePnl;
      case BotDynamicStatisticParameter.roi:
        return info.roi;
      case BotDynamicStatisticParameter.turnover:
        return info.turnover;
      case BotDynamicStatisticParameter.totalBotHours:
        return info.totalBotHours;
      case BotDynamicStatisticParameter.maxInUse:
        return info.maxInUse;
      case BotDynamicStatisticParameter.orders:
        return info.orders;
      case BotDynamicStatisticParameter.noControlInstantLoss:
        return info.noControlInstantLoss;
      case BotDynamicStatisticParameter.maxInNoControl:
        return info.maxInNoControl;
    }
  }

  String get signEndString {
    switch (this) {
      case BotDynamicStatisticParameter.roi:
        return ' %';
      default:
        return '';
    }
  }
}