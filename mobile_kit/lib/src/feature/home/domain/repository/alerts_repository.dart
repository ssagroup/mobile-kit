import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

abstract class AlertsRepository {

  Future<Either<Failure, List<NotificationModel>>> fetchNotifications();

  Stream<List<NotificationModel>> get notificationStream;

  Stream<Unit> get pushMessageStream;

  void updateNotifications(List<NotificationModel> notifications);

  Future<void> requestPushNotificationToken();

}