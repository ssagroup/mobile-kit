import 'package:dartz/dartz.dart';

abstract class NotificationsLocalDatasource {

  Future<void> askForPermissions();

  Stream<Unit> get pushMessage;

}