import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/util/optional.dart';
import 'package:ctp_mobile/util/string_extension.dart';

enum BotParameter {
  pnl,
  hourlyPnl,
  roi,
  strategy,
  instrument,
  orderSize,
  lastOrder,
  uptime,
  orders,
  available,
  currentlyInUse,
  maxInUse,
  ncInstLoss,
  maxInNC,
  ncOrders,
  nc
}

extension BotParameterExtension on BotParameter {
  String get parameterName {
    switch (this) {
      case BotParameter.roi:
      case BotParameter.pnl:
      case BotParameter.nc:
        return name.toUpperCase();
      case BotParameter.hourlyPnl:
        return 'Hourly PNL';
      case BotParameter.lastOrder:
        return 'Last Order';
      case BotParameter.orderSize:
        return 'Order Size';
      case BotParameter.currentlyInUse:
        return 'Currently in use';
      case BotParameter.maxInUse:
        return 'Max in use';
      case BotParameter.ncInstLoss:
        return 'NC inst loss';
      case BotParameter.maxInNC:
        return 'Max in NC';
      case BotParameter.ncOrders:
        return 'NC Orders';
      default:
        return name.capitalized;
    }
  }

  bool get showClockIcon {
    switch (this) {
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
      case BotParameter.roi:
      case BotParameter.maxInUse:
      case BotParameter.ncInstLoss:
      case BotParameter.maxInNC:
      case BotParameter.ncOrders:
        return true;
      default:
        return false;
    }
  }

  String firstLineValue(BotInfo info) {
    final statistic = info.mobileStatistics;
    switch (this) {
      case BotParameter.strategy:
        return info.strategy;
      case BotParameter.uptime:
        return info.lastRunDuration;
      case BotParameter.roi:
        return statistic.roi;
      case BotParameter.orders:
        return statistic.orders;
      case BotParameter.instrument:
        return info.instrument;
      case BotParameter.pnl:
        return statistic.pnl;
      case BotParameter.hourlyPnl:
        return statistic.hourlyPnl;
      case BotParameter.lastOrder:
        return info.lastOrderDuration;
      case BotParameter.orderSize:
        return info.formattedOrderSize;
      case BotParameter.available:
        return statistic.available.firstOrNull.orEmpty;
      case BotParameter.currentlyInUse:
        return statistic.currentlyInUse.firstOrNull.orEmpty;
      case BotParameter.maxInUse:
        return statistic.maxInUse.firstOrNull.orEmpty;
      case BotParameter.ncInstLoss:
        return statistic.noControlInstantLoss.firstOrNull.orEmpty;
      case BotParameter.maxInNC:
        return statistic.maxInNoControl.firstOrNull.orEmpty;
      case BotParameter.ncOrders:
        return statistic.ncOrdersFirst;
      case BotParameter.nc:
        return statistic.noControls.firstOrNull.orEmpty;
    }
  }

  String secondLineValue(BotInfo info) {
    final statistic = info.mobileStatistics;
    switch (this) {
      case BotParameter.strategy:
      case BotParameter.uptime:
      case BotParameter.roi:
      case BotParameter.orders:
      case BotParameter.instrument:
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
      case BotParameter.lastOrder:
      case BotParameter.orderSize:
        return '';
      case BotParameter.available:
        return statistic.available.elementAtOrNull(1).orEmpty;
      case BotParameter.currentlyInUse:
        return statistic.currentlyInUse.elementAtOrNull(1).orEmpty;
      case BotParameter.maxInUse:
        return statistic.maxInUse.elementAtOrNull(1).orEmpty;
      case BotParameter.ncInstLoss:
        return statistic.noControlInstantLoss.lastOrNull.orEmpty;
      case BotParameter.maxInNC:
        return statistic.maxInNoControl.lastOrNull.orEmpty;
      case BotParameter.ncOrders:
        return statistic.ncOrdersSecond;
      case BotParameter.nc:
        return statistic.noControls.lastOrNull.orEmpty;
    }
  }

  String thirdLineValue(BotInfo info) {
    final statistic = info.mobileStatistics;
    switch (this) {
      case BotParameter.strategy:
      case BotParameter.uptime:
      case BotParameter.roi:
      case BotParameter.orders:
      case BotParameter.instrument:
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
      case BotParameter.lastOrder:
      case BotParameter.orderSize:
      case BotParameter.ncInstLoss:
      case BotParameter.maxInNC:
      case BotParameter.ncOrders:
      case BotParameter.nc:
        return '';
      case BotParameter.available:
        return statistic.available.elementAtOrNull(2).orEmpty;
      case BotParameter.currentlyInUse:
        return statistic.currentlyInUse.elementAtOrNull(2).orEmpty;
      case BotParameter.maxInUse:
        return statistic.maxInUse.elementAtOrNull(2).orEmpty;
    }
  }
}