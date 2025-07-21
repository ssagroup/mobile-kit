import 'package:ctp_mobile/core/data/dio_error.dart';
import 'package:dio/dio.dart';
import 'package:mobile_kit/mobile_kit.dart';

mixin BaseRemoteDataSourceMixin {
  /// Generic request which makes a single request with authorization token
  Future<R> requestWithAuthentication<R>({
    required AuthenticationRepository authenticationRep,
    required Future<R> Function(String) method,
    int recursionCount = 0,
  }) async {
    try {
      final String token = await authenticationRep.token;
      final R response = await method.call('Bearer ' + token);
      return response;
    } on DioException catch (error) {
      print(error);
      if (error.response?.statusCode == 401) {
        if (recursionCount == 1) {
          throw TokenExpiredException();
        }
        final refreshTokenResult = await authenticationRep.refreshToken();
        return await refreshTokenResult.fold(
          (l) => throw TokenExpiredException(),
          (r) async {
            return await requestWithAuthentication(
                authenticationRep: authenticationRep, method: method, recursionCount: 1);
          },
        );
      }
      throw error.toServerException;
    }
  }
}
