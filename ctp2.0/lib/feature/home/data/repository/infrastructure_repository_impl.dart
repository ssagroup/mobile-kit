import 'package:ctp_mobile/core/extension/string_extension.dart';
import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/local/chart_local_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/infrastructure_chart_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/infrastructure_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureRepositoryImpl with BaseRepositoryMixin implements InfrastructureRepository {
  InfrastructureRepositoryImpl({
    required InfrastructureRemoteDatasourceImpl remoteDatasource,
    required InfrastructureChartRemoteDatasourceImpl chartRemoteDatasource,
    required InfrastructureChartLocalDatasourceImpl chartLocalDatasource,
  })  : _remoteDatasource = remoteDatasource,
        _chartRemoteDatasource = chartRemoteDatasource,
        _chartLocalDatasource = chartLocalDatasource;

  final InfrastructureRemoteDatasourceImpl _remoteDatasource;
  final InfrastructureChartRemoteDatasourceImpl _chartRemoteDatasource;
  final InfrastructureChartLocalDatasourceImpl _chartLocalDatasource;

  @override
  Future<Either<Failure, List<InfrastructureModel>>> getAll() async {
    return await getGenericDataWithoutCaching<List<InfrastructureModel>>(remote: () async {
      final infrastructures = await _remoteDatasource.getInfrastructure();
      return infrastructures.asMap().entries.map((elem) {
        return InfrastructureModel(
          status: InfrastructureStatus.none,
          title: elem.value.title,
          id: elem.value.id.toString(),
          order: elem.key,
        );
      }).toList();
    });
  }

  @override
  Future<Either<Failure, List<InfrastructureDetailsModel>>> getDetails(String id, String filter) async {
    return await getGenericDataWithoutCaching<List<InfrastructureDetailsModel>>(remote: () async {
      final dashboardId = int.tryParse(id).orZero;
      final infrastructureDetails = await _remoteDatasource.getInfrastructureDetails(dashboardId);
      List<InfrastructureDetailsModel> details = [];
      for (final elem in infrastructureDetails.panels.asMap().entries) {
        final chartId = elem.value.panelSchema?.type == 'timeseries' ? elem.value.source.panelId.toString() : null;
        final intChartId = int.tryParse(chartId.orEmpty);
        final dashboardUid = elem.value.source.dashboardUid;
        final unit = elem.value.panelSchema?.fieldConfig.defaults.custom?.axisLabel;
        String? value;
        if (intChartId != null) {
          final chartData = await _chartRemoteDatasource.getInfrastructureChartData(
              intChartId, dashboardUid, filter.toInfraApiValue, unit);
          value = (chartData.lastValue) ?? '--';
          _chartLocalDatasource.saveItem(chartData, intChartId);
        }
        final model = InfrastructureDetailsModel(
          status: InfrastructureStatus.none,
          title: elem.value.title,
          value: value.orEmpty,
          order: elem.key,
          dashboardUid: elem.value.source.dashboardUid,
          chartId: chartId,
          unit: elem.value.panelSchema?.fieldConfig.defaults.custom?.axisLabel,
        );
        details.add(model);
      }
      return details;
    });
  }
}
