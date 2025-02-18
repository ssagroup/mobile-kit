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
    return (await _infrastructureRepository.getDetails(_id, period));
  }

  final InfrastructureRepository _infrastructureRepository;
  final String _id;
}
