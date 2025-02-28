import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class SettingsRepository {

  Future<Either<Failure, UserModel?>> getUser();

}