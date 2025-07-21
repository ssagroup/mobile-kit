
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureChartLocalDatasourceImpl {

  final Map<int, ChartModel> _charts = {};

  void saveItem(ChartModel chart, int chartId) {
    _charts[chartId] = chart;
  }

  ChartModel? getChartModel(int chartId) {
    return _charts[chartId];
  }
}
