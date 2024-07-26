// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$ApiAuthClient extends ApiAuthClient {
  _$ApiAuthClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiAuthClient;

  @override
  Future<Response<APIResponse<AuthInfo>>> signIn(
      {required SigninRequest request}) {
    final Uri $url = Uri.parse('auth/SignIn');
    final $body = request;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<APIResponse<AuthInfo>, AuthInfo>($request);
  }

  @override
  Future<Response<APIResponse<AuthInfo>>> refreshToken({String? refreshToken}) {
    final Uri $url = Uri.parse('auth/RefreshToken');
    final $body = <String, dynamic>{'refreshToken': refreshToken};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<APIResponse<AuthInfo>, AuthInfo>($request);
  }

  @override
  Future<Response<SuccessResponse>> registerFCM({
    required String authorization,
    required String token,
    required String platform,
  }) {
    final Uri $url = Uri.parse('notificationdevice/register');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final $body = <String, dynamic>{
      'token': token,
      'platform': platform,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }

  @override
  Future<Response<SuccessResponse>> unregisterFCM({
    required String authorization,
    required String token,
    required String platform,
  }) {
    final Uri $url = Uri.parse('notificationdevice/unregister');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final $body = <String, dynamic>{
      'token': token,
      'platform': platform,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }
}
