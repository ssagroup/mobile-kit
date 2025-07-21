import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data/dio_error.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:dio/dio.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:ctp_mobile/feature/login/data/model/response/auth_info.dart';

class AuthRemoteDataSourceImpl with BaseRemoteDataSourceMixin {
  AuthRemoteDataSourceImpl({
    required ApiClient client,
  }) : _client = client;

  final ApiClient _client;

  Future<AuthInfo> signIn({
    required AuthRequest request,
  }) async {
    try {
      final response = await _client.signIn(request: request);
      return response.result;
    } on DioException catch (error) {
      throw error.toServerException();
    }
  }

  Future<AuthInfo> refreshToken({
    required String refreshToken,
  }) async {
    try {
      final response = await _client.refreshToken(refreshToken: refreshToken);
      return response.result;
    } on DioException catch (error) {
      throw error.toServerException();
    }
  }
}
