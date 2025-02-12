import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/kpi_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class KpiRepository {

  Future<Either<Failure, List<KpiModel>>> getAll(String filter);

}