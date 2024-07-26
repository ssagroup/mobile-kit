import 'dart:io';

import 'package:ctp_mobile/api/api_auth_client.dart';
import 'package:ctp_mobile/api/request/signin_request.dart';
import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/data/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/util/optional.dart';

class AuthRemoteDataSourceImpl with BaseRemoteDataSourceMixin {
  AuthRemoteDataSourceImpl({
    required ApiAuthClient client,
  }) : _client = client;

  final ApiAuthClient _client;

  Future<AuthInfo> signIn({
    required SigninRequest request,
  }) async {
    final response = await _client.signIn(request: request);
    if (response.isSuccessful) {
      return response.body!.result;
    } else if (response.statusCode == 401) {
      throw CredentialsInvalidException();
    } else {
      throw ServerException(response.statusCode, tryCast<String>(response.error) ?? response.bodyString);
    }
  }

  Future<AuthInfo> refreshToken({
    required String refreshToken,
  }) async {
    final response = await _client.refreshToken(refreshToken: refreshToken);
    if (response.isSuccessful) {
      return response.body!.result;
    } else if (response.statusCode == 401) {
      throw TokenExpiredException();
    } else {
      throw ServerException(response.statusCode, tryCast<String>(response.error) ?? response.bodyString);
    }
  }

  Future<SuccessResponse> registerFCM(String fcm, String authToken) async {
    final platform = Platform.isAndroid ? 'Android' : 'Ios';
    final response = await _client.registerFCM(authorization: 'Bearer $authToken', token: fcm, platform: platform);
    if (response.isSuccessful) {
      return response.body!;
    } else if (response.statusCode == 401) {
      throw TokenExpiredException();
    } else {
      throw ServerException(response.statusCode, tryCast<String>(response.error) ?? response.bodyString);
    }
  }

  Future<SuccessResponse> unregisterFCM(String fcm, String authToken) async {
    final platform = Platform.isAndroid ? 'Android' : 'Ios';
    final response = await _client.unregisterFCM(authorization: 'Bearer $authToken', token: fcm, platform: platform);
    if (response.isSuccessful) {
      return response.body!;
    } else if (response.statusCode == 401) {
      throw TokenExpiredException();
    } else {
      throw ServerException(response.statusCode, tryCast<String>(response.error) ?? response.bodyString);
    }
  }
}
