import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class AlertsRepository {

  Future<Either<Failure, PaginatedNotificationModel>> fetchNotifications({required int skipCount, required int limit});

  Stream<Unit> get pushMessageStream;

  Stream<String?> get pushTokenStream;

  Future<void> requestPushNotificationToken();

  Future<Either<Failure, void>> updatePushToken(String? pushToken);

}