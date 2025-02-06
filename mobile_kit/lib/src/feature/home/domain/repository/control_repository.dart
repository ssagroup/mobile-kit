import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/control_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class ControlRepository {

  Future<Either<Failure, List<ControlModel>>> getAll();

  Future<Either<Failure, void>> start(int id);

  Future<Either<Failure, void>> stop(int id);

  Future<Either<Failure, void>> stopAll();

  void updateControls(List<ControlModel> controls);

  List<ControlModel> get getControls;

  Stream<List<ControlModel>> get controlsStream;

}