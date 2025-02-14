import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';


class GetAllInfrastructureUseCase {
  GetAllInfrastructureUseCase(
      InfrastructureRepository infrastructureRepository,
      )   : _infrastructureRepository = infrastructureRepository,
        super();

  /// Get All Infrastructure
  Future<Either<Failure, List<InfrastructureModel>>> invoke() async {
    return (await _infrastructureRepository.getAll());
  }

  final InfrastructureRepository _infrastructureRepository;
}