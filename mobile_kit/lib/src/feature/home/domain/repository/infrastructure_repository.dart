import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_details_model.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class InfrastructureRepository {

  Future<Either<Failure, List<InfrastructureModel>>> getAll();

  Future<Either<Failure, List<InfrastructureDetailsModel>>> getDetails(String id, String filter);

}