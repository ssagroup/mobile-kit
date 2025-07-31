import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/feature/home/domain/model/chart_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class ChartRepository {

  Future<Either<Failure, ChartModel?>> getChartInfo(String? id, String? dashboardId, String? period);

}
