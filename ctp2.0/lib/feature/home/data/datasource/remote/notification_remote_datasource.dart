import 'dart:io';

import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/data_model/responses.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/notification_info.dart';
import 'package:mobile_kit/mobile_kit.dart';

class NotificationRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  NotificationRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<List<NotificationInfo>> getNotifications() async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResultResponse<APIItemsResult<NotificationInfo>>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getNotifications(authorization: auth),
      );
      _isFetchingSubject.add(false);
      return response.result.items;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  Future<SuccessResponse> registerFCM(String fcm) async {
    final platform = Platform.isAndroid ? 'Android' : 'Ios';
    final response = await requestWithAuthentication<SuccessResponse>(
      authenticationRep: _authentication,
      method: (String auth) => _client.registerFCM(authorization: auth, token: fcm, platform: platform)
    );
    return response;
  }

  Future<SuccessResponse> unregisterFCM(String fcm) async {
    final platform = Platform.isAndroid ? 'Android' : 'Ios';
    final response = await requestWithAuthentication<SuccessResponse>(
        authenticationRep: _authentication,
        method: (String auth) => _client.unregisterFCM(authorization: auth, token: fcm, platform: platform)
    );
    return response;
  }
}