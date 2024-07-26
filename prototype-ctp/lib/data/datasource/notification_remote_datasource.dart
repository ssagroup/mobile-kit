import 'package:ctp_mobile/api/api_notification_client.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/data/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/data/repository/authentication_repository.dart';
import 'package:rxdart/rxdart.dart';

class NotificationRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  NotificationRemoteDatasourceImpl({
    required ApiNotificationClient client,
    required AuthenticationRepositoryImpl authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiNotificationClient _client;
  final AuthenticationRepositoryImpl _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<List<NotificationInfo>> getNotifications() async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResponse<APIResult<NotificationInfo>>>(
        authentication: _authentication,
        method: (String auth) => _client.getNotifications(authorization: auth),
      );
      _isFetchingSubject.add(false);
      return response.result.items;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  Future<SuccessResponse> markAllAsRead() async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authentication: _authentication,
      method: (String auth) => _client.markAllAsRead(authorization: auth),
    );
    return response;
  }
}
