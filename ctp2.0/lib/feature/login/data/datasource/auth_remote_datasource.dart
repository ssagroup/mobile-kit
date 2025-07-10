import 'dart:io';

import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/responses.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:mobile_kit/mobile_kit.dart';
// import 'package:ctp_mobile/data/datasource/base_remote_datasource.dart';
// import 'package:mobile_kit/src/shared/domain/entity/failure.dart';
// import 'package:ctp_mobile/feature/login/data/model/request/signin_request.dart';
import 'package:ctp_mobile/feature/login/data/model/response/auth_info.dart';
// import 'package:ctp_mobile/feature/login/data/repository/api_auth_client.dart';
// import 'package:ctp_mobile/util/optional.dart';

class AuthRemoteDataSourceImpl with BaseRemoteDataSourceMixin {
  AuthRemoteDataSourceImpl({
    required ApiClient client,
  }) : _client = client;

  final ApiClient _client;

  Future<AuthInfo> signIn({
    required AuthRequest request,
  }) async {
    final response = await _client.signIn(request: request);
    // if (response.result != null) {
      return response.result;
    // } else if (response.statusCode == 401) {
    //   throw CredentialsInvalidException();
    // } else {
    //   throw ServerException(response.statusCode!, '');//tryCast<String>(response.error) ?? response.bodyString);
    // }
  }

  Future<AuthInfo> refreshToken({
    required String refreshToken,
  }) async {
    final response = await _client.refreshToken(refreshToken: refreshToken);
    // if (response.isSuccessful) {
      return response.result;
    // } else if (response.statusCode == 401) {
    //   throw TokenExpiredException();
    // } else {
    //   throw ServerException(response.statusCode!, '');//tryCast<String>(response.error) ?? response.bodyString);
    // }
  }
}
