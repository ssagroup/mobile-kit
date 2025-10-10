import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetNotificationsPageUseCase {
  GetNotificationsPageUseCase(
    AlertsRepository alertsRepository,
  ) : _alertsRepository = alertsRepository;

  /// Get All Notifications
  Future<Either<Failure, PaginatedNotificationModel>> invoke({required int skipCount}) async {
    final result = await _alertsRepository.fetchNotifications(skipCount: skipCount, limit: limit);
    return result;
  }

  static final limit = 20;
  final AlertsRepository _alertsRepository;
  Stream<Unit> get pushMessage => _alertsRepository.pushMessageStream;
}
