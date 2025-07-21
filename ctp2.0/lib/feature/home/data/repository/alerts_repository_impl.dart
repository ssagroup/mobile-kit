import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/local/firebase_notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/notification_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class AlertsRepositoryImpl with BaseRepositoryMixin implements AlertsRepository {
  AlertsRepositoryImpl({
    required NotificationRemoteDatasourceImpl remoteDatasource,
    required FirebaseNotificationsLocalDatasourceImpl localDatasource,
  }) : _remoteDatasource = remoteDatasource,
      _localDatasource = localDatasource;

  final NotificationRemoteDatasourceImpl _remoteDatasource;
  final FirebaseNotificationsLocalDatasourceImpl _localDatasource;
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
    _notificationsSubject.add([]);

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
    final fcm = _localDatasource.lastFcmToken;
    final result = await performSuccessOperation(
      remote: pushToken?.isEmpty == false
        ? () => _remoteDatasource.registerFCM(fcm!)
        : () => _remoteDatasource.unregisterFCM(fcm!),
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
