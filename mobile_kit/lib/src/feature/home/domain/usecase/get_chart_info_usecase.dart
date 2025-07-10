import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/chart_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/chart_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetChartInfoUseCase {
  GetChartInfoUseCase(
    ChartRepository chartRepository,
    String? chartId,
    StatisticsPeriod? period,
  )   : _chartRepository = chartRepository,
        _chartId = chartId,
        _period = period;

  /// Get Chart info
  Future<Either<Failure, ChartModel?>> invoke() async => await _chartRepository.getChartInfo(_chartId, _period?.apiValue);

  final ChartRepository _chartRepository;
  final String? _chartId;
  final StatisticsPeriod? _period;
}
