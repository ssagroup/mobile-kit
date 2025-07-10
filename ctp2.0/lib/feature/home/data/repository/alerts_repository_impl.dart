import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/notification_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class AlertsRepositoryImpl with BaseRepositoryMixin implements AlertsRepository {
  AlertsRepositoryImpl({
    required NotificationRemoteDatasourceImpl remoteDatasource,
    required NotificationsLocalDatasource localDatasource,
  }) : _remoteDatasource = remoteDatasource,
      _localDatasource = localDatasource;

  final NotificationRemoteDatasourceImpl _remoteDatasource;
  final NotificationsLocalDatasource _localDatasource;
  final _notificationsSubject = BehaviorSubject<List<NotificationModel>>();

  @override
  Stream<List<NotificationModel>> get notificationStream => _notificationsSubject.stream;

  @override
  Stream<Unit> get pushMessageStream => _localDatasource.pushMessage;

  @override
  Stream<String?> get pushTokenStream => _localDatasource.pushToken;

  Stream<bool> get isFetching => _remoteDatasource.isFetching;

  @override
  Future<Either<Failure, List<NotificationModel>>> fetchNotifications() async {
    return await getGenericDataWithCaching<List<NotificationModel>>(remote: () async {
      final notifications = await _remoteDatasource.getNotifications();
      return notifications.map((e){
        return NotificationModel(
            createdDate: e.creationTime,
            title: e.title,
            value: e.text,
        );
      }).toList();
    }, cacheLocal: (response) {
      _notificationsSubject.add(response);
      return Future.value();
    });
  }

  @override
  Future<Either<Failure, void>> updatePushToken(String? pushToken) async {
    final result = await performSuccessOperation(
      remote: pushToken?.isEmpty == false
        ? () => _remoteDatasource.registerFCM(pushToken!)
        : () => _remoteDatasource.unregisterFCM(pushToken!),
    );
    return result;
  }

  @override
  void updateNotifications(List<NotificationModel> notifications) {
    _notificationsSubject.add(notifications);
  }

  @override
  Future<void> requestPushNotificationToken() async {
    _localDatasource.askForPermissions();
  }
}
