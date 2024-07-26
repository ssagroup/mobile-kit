enum StatisticsPeriod { day, week, month, year, allTime }

extension StatisticsPeriodExtension on StatisticsPeriod {
  String get apiValue {
    switch (this) {
      case StatisticsPeriod.day:
        return 'Day';
      case StatisticsPeriod.week:
        return 'Week';
      case StatisticsPeriod.month:
        return 'Month';
      case StatisticsPeriod.year:
        return 'Year';
      case StatisticsPeriod.allTime:
        return 'AllTime';
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
      case StatisticsPeriod.allTime:
        return 'All';
    }
  }
}