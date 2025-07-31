import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/chart/bloc/chart_datasource.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({required this.datasource, super.key});

  final ChartDatasource datasource;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
          ),
          child: LineChart(
            mainData(),
          ),
        ),
      ],
    );
  }

  Widget _leftTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      meta: meta,
      child: Text(
        meta.formattedValue,
        style: TextStyle(
          fontSize: 11,
          color: ColorPalette.grayText,
        ),
      ),
    );
  }

  Widget _bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 11,
      color: ColorPalette.grayText,
    );
    final formattedText = datasource.configureBottomTitle(value);
    if (formattedText == null) {
      return Container();
    }
    return SideTitleWidget(
      meta: meta,
      child: Text(formattedText, style: style),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        verticalInterval: datasource.interval,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: ColorPalette.grayControl,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: ColorPalette.grayControl,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: datasource.interval,
            getTitlesWidget: _bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            // interval: 1,
            getTitlesWidget: _leftTitleWidgets,
            reservedSize: 40,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: datasource.minX,
      maxX: datasource.maxX,
      minY: datasource.minY,
      maxY: datasource.maxY,
      lineBarsData: [
        LineChartBarData(
          spots: datasource.spots,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, color: ColorPalette.blueGreen.withValues(alpha: 0.2)),
          color: ColorPalette.mintGreen,
        ),
      ],
      clipData: FlClipData.all()
    );
  }
}
