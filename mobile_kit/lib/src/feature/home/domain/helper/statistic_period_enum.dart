import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';

enum StatisticsPeriod {

  day, week, month, year, current, one_hour, three_hours, six_hours, twelve_hours;

  String get apiValue {
    return switch (this) {
      StatisticsPeriod.current => 'current',
      StatisticsPeriod.one_hour => '1h',
      StatisticsPeriod.three_hours => '3h',
      StatisticsPeriod.six_hours => '6h',
      StatisticsPeriod.twelve_hours => '12h',
      StatisticsPeriod.day => '24h',
      StatisticsPeriod.week => '7d',
      StatisticsPeriod.month => '30d',
      StatisticsPeriod.year => '1y',

    };
  }

  String uiValue(BuildContext context) {
    return switch (this) {
      StatisticsPeriod.current => AppLocalizations.of(context)!.currentTitle,
      StatisticsPeriod.one_hour => AppLocalizations.of(context)!.oneHourTitle,
      StatisticsPeriod.three_hours => AppLocalizations.of(context)!.threeHoursTitle,
      StatisticsPeriod.six_hours => AppLocalizations.of(context)!.sixHoursTitle,
      StatisticsPeriod.twelve_hours => AppLocalizations.of(context)!.twelveHoursTitle,
      StatisticsPeriod.day => AppLocalizations.of(context)!.dayTitle,
      StatisticsPeriod.week => AppLocalizations.of(context)!.weekTitle,
      StatisticsPeriod.month => AppLocalizations.of(context)!.monthTitle,
      StatisticsPeriod.year => AppLocalizations.of(context)!.yearTitle,
    };
  }
}