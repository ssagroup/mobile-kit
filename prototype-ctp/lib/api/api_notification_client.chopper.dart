// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_notification_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$ApiNotificationClient extends ApiNotificationClient {
  _$ApiNotificationClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiNotificationClient;

  @override
  Future<Response<APIResponse<APIResult<NotificationInfo>>>> getNotifications(
      {required String authorization}) {
    final Uri $url = Uri.parse('notification/');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<APIResponse<APIResult<NotificationInfo>>,
        NotificationInfo>($request);
  }

  @override
  Future<Response<SuccessResponse>> markAllAsRead(
      {required String authorization}) {
    final Uri $url = Uri.parse('notification/readall');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }
}
