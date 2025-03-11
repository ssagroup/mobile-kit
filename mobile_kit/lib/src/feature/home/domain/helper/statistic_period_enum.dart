import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';

enum StatisticsPeriod {
  day,
  week,
  month,
  year,
  current,
  one_hour,
  three_hours,
  six_hours,
  twelve_hours;

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

  double get duration => switch (this) {
        StatisticsPeriod.current => Duration(hours: 1).inSeconds,
        StatisticsPeriod.one_hour => Duration(hours: 1).inSeconds,
        StatisticsPeriod.three_hours => Duration(hours: 3).inSeconds,
        StatisticsPeriod.six_hours => Duration(hours: 6).inSeconds,
        StatisticsPeriod.twelve_hours => Duration(hours: 12).inSeconds,
        StatisticsPeriod.day => Duration(hours: 24).inSeconds,
        StatisticsPeriod.week => Duration(days: 7).inSeconds,
        StatisticsPeriod.month => Duration(days: 30).inSeconds,
        StatisticsPeriod.year => Duration(days: 365).inSeconds,
      }
          .toDouble();

  double get interval => switch (this) {
        StatisticsPeriod.current => Duration(minutes: 5).inSeconds,
        StatisticsPeriod.one_hour => Duration(minutes: 5).inSeconds,
        StatisticsPeriod.three_hours => Duration(minutes: 15).inSeconds,
        StatisticsPeriod.six_hours => Duration(minutes: 30).inSeconds,
        StatisticsPeriod.twelve_hours => Duration(hours: 1).inSeconds,
        StatisticsPeriod.day => Duration(hours: 3).inSeconds,
        StatisticsPeriod.week => Duration(days: 1).inSeconds,
        StatisticsPeriod.month => Duration(days: 7).inSeconds,
        StatisticsPeriod.year => Duration(days: 30).inSeconds,
      }
          .toDouble();
}
