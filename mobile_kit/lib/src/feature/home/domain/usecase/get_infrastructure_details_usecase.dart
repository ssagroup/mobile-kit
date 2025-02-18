import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_details_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetInfrastructureDetailsUseCase {
  GetInfrastructureDetailsUseCase(
    InfrastructureRepository infrastructureRepository,
    String id,
  )   : _infrastructureRepository = infrastructureRepository,
        _id = id,
        super();

  /// Get All Infrastructure Details
  Future<Either<Failure, List<InfrastructureDetailsModel>>> getDetails(StatisticsPeriod filter) async {
    String period = filter.apiValue;
    // TODO: Delete if-else (DB is filled only for Current and 1 h now)
    if (filter == StatisticsPeriod.current || filter == StatisticsPeriod.three_hours || filter == StatisticsPeriod.twelve_hours) {
      period = StatisticsPeriod.current.apiValue;
    } else {
      period = StatisticsPeriod.one_hour.apiValue;
    }
    return (await _infrastructureRepository.getDetails(_id, period));
  }

  final InfrastructureRepository _infrastructureRepository;
  final String _id;
}
