import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:mobile_kit/src/core/util/iterable_extension.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:mobile_kit/src/core/util/optional.dart';

class ChartDatasource {
  ChartDatasource(this.x, this.y, this.periodFilter);

  final List<double> x;
  final List<double> y;
  final StatisticsPeriod periodFilter;
  String? previousFormattedTime;

  String? configureBottomTitle(double value) {
    String formattedText = '';
    if ([
      StatisticsPeriod.current,
      StatisticsPeriod.one_hour,
      StatisticsPeriod.three_hours,
      StatisticsPeriod.six_hours,
      StatisticsPeriod.twelve_hours,
      StatisticsPeriod.day
    ].contains(periodFilter)) {
      final date = DateTime.fromMillisecondsSinceEpoch(value.toInt() * 1000);
      formattedText = DateFormat(DateFormat.HOUR24_MINUTE).format(date);

      if (['00', '15', '30', '45'].firstWhereOrNull((value) => formattedText.endsWith(value)) == null) {
        return null;
      }
    } else if (StatisticsPeriod.week == periodFilter || StatisticsPeriod.month == periodFilter) {
      final date = DateTime.fromMillisecondsSinceEpoch(value.toInt() * 1000);
      formattedText = DateFormat('MMM d').format(date);
    } else if (StatisticsPeriod.year == periodFilter) {
      final date = DateTime.fromMillisecondsSinceEpoch(value.toInt() * 1000);
      formattedText = DateFormat(DateFormat.ABBR_STANDALONE_MONTH).format(date);
    }

    if (previousFormattedTime == formattedText) {
      return null;
    }
    previousFormattedTime = formattedText;

    return formattedText;
  }

  List<FlSpot> get spots => zip2(x, y).map((tuple) => FlSpot(tuple.$1, tuple.$2)).toList();

  double get interval => periodFilter.interval.toDouble();

  int get _graphPointsCount => x.where((v) => v >= minX).length;

  int get _graphPointsCountWithPreviousOne => min(x.length, _graphPointsCount + 1);

  List<double> get _filteredY => y.sublist(y.length - _graphPointsCountWithPreviousOne);

  double get _biggestY => _filteredY.reduce((curr, next) => curr > next ? curr : next).orZero;

  double get _smallestY => _filteredY.reduce((curr, next) => curr < next ? curr : next).orZero;

  double get maxX => x.lastOrNull.orZero;

  double get minX => maxX - periodFilter.duration;

  double get minY => ((_smallestY * 0.8) / 10).truncateToDouble() * 10;

  double get maxY => ((_biggestY * 1.2) / 10).floorToDouble() * 10;
}
