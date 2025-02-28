import 'package:dartz/dartz.dart';
import 'package:collection/collection.dart';
import 'package:mobile_kit/src/core/util/either_extension.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetAllNotificationsUseCase {
  GetAllNotificationsUseCase(
    AlertsRepository alertsRepository,
  ) : _alertsRepository = alertsRepository;

  /// Get All Notifications
  Future<Either<Failure, void>> invoke() async {
    final result = await _alertsRepository.fetchNotifications();
    result.ifRight((notifications) {
      final sortedByDate = notifications.sorted((a, b) => b.createdDate.compareTo(a.createdDate));
      _alertsRepository.updateNotifications(sortedByDate);
    });
    return result;
  }

  final AlertsRepository _alertsRepository;
  Stream<List<NotificationModel>> get notifications => _alertsRepository.notificationStream;
  Stream<Unit> get pushMessage => _alertsRepository.pushMessageStream;
}
