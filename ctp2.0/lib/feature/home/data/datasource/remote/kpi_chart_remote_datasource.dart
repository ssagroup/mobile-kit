import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/kpi_chart_info.dart';
import 'package:ctp_mobile/core/extension/string_extension.dart';
import 'package:mobile_kit/mobile_kit.dart';

class KpiChartRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  KpiChartRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<ChartModel?> getKpiChartData(String? chartId, String? period) async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResultResponse<APIDataResult<KpiChartInfo>>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getKpiChartData(
            authorization: auth, xCoin: 'USDT', statisticsForAllBots: true, period: period!.toApiValue),
      );
      final data = response.result.data;
      final xPoints = data.map((elem) {
        return _getXPoint(chartId!, elem);
      }).toList();
      final yPoints = data.map((elem) {
        return _getYPoint(elem);
      }).toList();
      final chartModel = ChartModel(
        chartId: chartId,
        unit: 'USDT',
        points: ChartPointModel(x: yPoints, y: xPoints),
      );
      _isFetchingSubject.add(false);
      return chartModel;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  double _getXPoint(String chartId, KpiChartInfo elem) {
    return switch (chartId) {
      'kpi://pnl' => elem.pnl,
      'kpi://pnlInvestment' => elem.pnlInvestment,
      'kpi://pnlTotal' => elem.pnlTotal,
      _ => throw Error()
    };
  }

  double _getYPoint(KpiChartInfo elem) {
    double timestampInSeconds = elem.timestamp.millisecondsSinceEpoch / 1000;
    double timestampAsDouble = timestampInSeconds.toDouble();
    return timestampAsDouble;
  }
}