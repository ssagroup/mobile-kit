import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';

enum StatisticsPeriod { day, week, month, year }

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
    }
  }

  String uiValue(BuildContext context) {
    switch (this) {
      case StatisticsPeriod.day:
        return AppLocalizations.of(context)!.dayTitle;
      case StatisticsPeriod.week:
        return AppLocalizations.of(context)!.weekTitle;
      case StatisticsPeriod.month:
        return AppLocalizations.of(context)!.monthTitle;
      case StatisticsPeriod.year:
        return AppLocalizations.of(context)!.yearTitle;
    }
  }
}