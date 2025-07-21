import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/local/chart_local_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/kpi_chart_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

enum ChartType { kpi, infra }

class ChartRepositoryImpl with BaseRepositoryMixin implements ChartRepository {
  ChartRepositoryImpl({
    required KpiChartRemoteDatasourceImpl kpiChartRemoteDatasource,
    required InfrastructureChartLocalDatasourceImpl infrastructureChartLocalDatasource,
  })  : _kpiChartRemoteDatasource = kpiChartRemoteDatasource,
        _infrastructureChartLocalDatasource = infrastructureChartLocalDatasource;

  final KpiChartRemoteDatasourceImpl _kpiChartRemoteDatasource;
  final InfrastructureChartLocalDatasourceImpl _infrastructureChartLocalDatasource;
  Stream<bool> get isFetching => _kpiChartRemoteDatasource.isFetching;

  @override
  Future<Either<Failure, ChartModel?>> getChartInfo(String? chartId, String? dashboardUid, String? period) async {
    final chartType = _configureCharType(chartId);
    return await getGenericDataWithoutCaching<ChartModel?>(remote: () async {
      if (chartType == ChartType.kpi) {
        final chartData = await _kpiChartRemoteDatasource.getKpiChartData(chartId, period);
        return chartData;
      }
      final intChartId = int.tryParse(chartId.orEmpty).orZero;
      final chartData = _infrastructureChartLocalDatasource.getChartModel(intChartId);
      return chartData;
    });
  }

  ChartType _configureCharType(String? id) {
    if (id?.startsWith('kpi://') == true) {
      return ChartType.kpi;
    }
    return ChartType.infra;
  }
}
