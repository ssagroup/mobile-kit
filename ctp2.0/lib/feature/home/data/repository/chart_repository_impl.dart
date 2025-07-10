
import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/chart_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class ChartRepositoryImpl with BaseRepositoryMixin implements ChartRepository {
  ChartRepositoryImpl({
    required ChartRemoteDatasourceImpl remoteDatasource,
  }) : _remoteDatasource = remoteDatasource;

  final ChartRemoteDatasourceImpl _remoteDatasource;
  Stream<bool> get isFetching => _remoteDatasource.isFetching;

  @override
  Future<Either<Failure, ChartModel?>> getChartInfo(String? chartId, String? period) async {
    return await getGenericDataWithCaching<ChartModel?>(remote: () async {
      final chartData = await _remoteDatasource.getKpiChartData(chartId, period);
      return chartData;
    }, cacheLocal: (response) {
      return Future.value();
    });
  }
}
