import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/infrastructure_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/infrastructure_details_info.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureRepositoryImpl with BaseRepositoryMixin implements InfrastructureRepository {
  InfrastructureRepositoryImpl({
    required InfrastructureRemoteDatasource remoteDatasource,
  }) : _remoteDatasource = remoteDatasource;

  final InfrastructureRemoteDatasource _remoteDatasource;

  @override
  Future<Either<Failure, List<InfrastructureModel>>> getAll() async {
    return await getGenericDataWithCaching<List<InfrastructureModel>>(remote: () async {
      final infrastructures = await _remoteDatasource.getInfrastructure();
      return infrastructures.asMap().entries.map((elem) {
        return InfrastructureModel(
          status: InfrastructureStatus.none,
          title: elem.value.title,
          id: elem.value.id.toString(),
          order: elem.key,
        );
      }).toList();
    }, cacheLocal: (response) {
      return Future.value();
    });
  }

  @override
  Future<Either<Failure, List<InfrastructureDetailsModel>>> getDetails(String id, String filter) async {
    return await getGenericDataWithCaching<List<InfrastructureDetailsModel>>(remote: () async {
      final dashboardId = int.tryParse(id).orZero;
      final infrastructureDetails = await _remoteDatasource.getInfrastructureDetails(dashboardId);
      final details = infrastructureDetails.panels.asMap().entries.map((elem) {
        final chartId =
        elem.value.panelSchema?.type == 'timeseries' ? elem.value.source.panelId.toString() : null;
        final model = InfrastructureDetailsModel(
          status: InfrastructureStatus.none,
          title: infrastructureDetails.title,
          value: '-',
          order: elem.key,
          dashboardUid: elem.value.source.dashboardUid,
          chartId: chartId,
        );
        return model;
      });
      return details.toList();
    }, cacheLocal: (response) {
      return Future.value();
    });
  }
}
