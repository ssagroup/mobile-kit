import 'package:collection/collection.dart';
import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/data/datasource/notification_remote_datasource.dart';
import 'package:ctp_mobile/data/repository/base_repository.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/util/either_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class NotificationRepositoryImpl with BaseRepositoryMixin {
  NotificationRepositoryImpl({
    required NotificationRemoteDatasourceImpl remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final NotificationRemoteDatasourceImpl _remoteDataSource;
  final _notificationsSubject = BehaviorSubject<List<NotificationInfo>>();

  Stream<bool> get isFetching => _remoteDataSource.isFetching;

  Stream<List<NotificationInfo>> get notifications => _notificationsSubject.stream;
  Stream<int> get unreadNotificationsCount => _notificationsSubject.map((event) => event.where((e) => e.readAt == null).length);

  Future<Either<Failure, void>> fetchNotifications() async {
    final result = await getGenericDataWithCaching<List<NotificationInfo>>(
        remote: _remoteDataSource.getNotifications,
        cacheLocal: (items) {
          _notificationsSubject.add(items);
          return Future.value();
        });
    return result;
  }

  Future<Either<Failure, void>> markAllAsRead() async {

    final result = await performSuccessOperation(
      remote: _remoteDataSource.markAllAsRead,
    );

    result.ifRight((_) {
      var notificationList = _notificationsSubject.value;
      notificationList = notificationList.map((element) {
        return element.readAt == null ? element.copyWith(readAt: DateTime.now()) : element;
      }).toList();
      _notificationsSubject.add(notificationList.sorted((a, b) => b.id.compareTo(a.id)));
    });

    return result;
  }

  Future<void> clear() async {
    _notificationsSubject.add([]);
  }
}
