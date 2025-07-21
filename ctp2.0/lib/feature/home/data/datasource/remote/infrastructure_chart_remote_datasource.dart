import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureChartRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  InfrastructureChartRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<ChartModel> getInfrastructureChartData(int chartId,
      String? dashboardUid,
      int? period,
      String? unit,
      ) async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIDataResponse<APIResultsResponse<dynamic>>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getInfraChartData(
            authorization: auth, panelId: chartId, dashboardUid: dashboardUid!, period: period),
      );
      final x = (response.data.results as Map)['A']['frames'][0]['data']['values'][0] as List<dynamic>;
      final y = (response.data.results as Map)['A']['frames'][0]['data']['values'][1] as List<dynamic>;
      final listDoubleX = _getXPointInfra(x);
      final listDoubleY = _getYPointInfra(y);
      final schemeChartId = 'infra://$chartId';
      final returnValue = ChartModel(
        chartId: schemeChartId,
        unit: unit,
        points: ChartPointModel(x: listDoubleX, y: listDoubleY),
        lastValue: _getLastChartYValue(y),
      );
      _isFetchingSubject.add(false);
      return Future.value(returnValue);
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  List<double> _getYPointInfra(List<dynamic> y) {
    final yPoints = y.map((elem) {
      if (elem is int) {
        double yValue = elem.toDouble();
        return yValue;
      } else {
        String roundedString = elem.toStringAsFixed(1);
        double roundedDouble = double.parse(roundedString);
        return roundedDouble;
      }
    }).toList();
    return yPoints;
  }

  List<double> _getXPointInfra(List<dynamic> y) {
    final xPoints = y.map((elem) {
      double timestampInSeconds = (elem as int).toDouble() / 1000;
      return timestampInSeconds;
    }).toList();
    return xPoints;
  }

  String? _getLastChartYValue(List<dynamic> y) {
    final lastValue = y.last;
    if (lastValue is int) {
      return lastValue.toString();
    }
    return lastValue.toStringAsFixed(1);
  }
}
