import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/kpi_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/kpi_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetAllKpisUseCase {
  GetAllKpisUseCase(
      KpiRepository kpiRepository,
      )   : _kpiRepository = kpiRepository,
        super();

  /// Get All Kpis
  Future<Either<Failure, List<KpiModel>>> getAll(StatisticsPeriod filter) async {
    String period = filter.apiValue;
    return (await _kpiRepository.getAll(period));
  }

  final KpiRepository _kpiRepository;
}