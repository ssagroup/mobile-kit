
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/util/string_extension.dart';

enum BotStaticStatisticParameter {
  runningBots,
  balance,
  available,
  nc,
  currentlyInUse,
  tradingTime,
}

extension BotStatisticParameterExtension on BotStaticStatisticParameter {
  String get parameterName {
    switch (this) {
      case BotStaticStatisticParameter.runningBots:
        return 'Running Bots';
      case BotStaticStatisticParameter.balance:
        return name.capitalized;
      case BotStaticStatisticParameter.available:
        return name.capitalized;
      case BotStaticStatisticParameter.nc:
        return name.toUpperCase();
      case BotStaticStatisticParameter.currentlyInUse:
        return 'Currently in use';
      case BotStaticStatisticParameter.tradingTime:
        return 'Trading time';
    }
  }

  String statisticValue(StaticStatisticsInfo info) {
    switch (this) {
      case BotStaticStatisticParameter.runningBots:
        return '${info.botsAmount}';
      case BotStaticStatisticParameter.balance:
        return info.balance;
      case BotStaticStatisticParameter.available:
        return info.available;
      case BotStaticStatisticParameter.nc:
        return info.noControls;
      case BotStaticStatisticParameter.currentlyInUse:
        return info.currentlyInUse;
      case BotStaticStatisticParameter.tradingTime:
        return info.tradingTime;
    }
  }
}