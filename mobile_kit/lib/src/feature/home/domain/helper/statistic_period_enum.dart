enum StatisticsPeriod { day, week, month, year, }

extension StatisticsPeriodExtension on StatisticsPeriod {
  String get apiValue {
    switch (this) {
      case StatisticsPeriod.day:
        return '24h';
      case StatisticsPeriod.week:
        return '7d';
      case StatisticsPeriod.month:
        return '30d';
      case StatisticsPeriod.year:
        return '1y';
      // case StatisticsPeriod.allTime:
      //   return 'All';
    }
  }

  String get uiValue {
    switch (this) {
      case StatisticsPeriod.day:
        return '24 h';
      case StatisticsPeriod.week:
        return '7 d';
      case StatisticsPeriod.month:
        return '30 d';
      case StatisticsPeriod.year:
        return '1 y';
      // case StatisticsPeriod.allTime:
      //   return 'All';
    }
  }
}