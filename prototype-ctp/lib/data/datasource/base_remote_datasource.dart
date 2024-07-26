import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/data/repository/authentication_repository.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/util/optional.dart';

mixin BaseRemoteDataSourceMixin {
  /// Generic request which makes a single request with authorization token
  Future<R> requestWithAuthentication<R>({
    required AuthenticationRepositoryImpl authentication,
    required Future<Response<R>> Function(String) method,
    int recursionCount = 0,
  }) async {
    final String token = await authentication.token;
    final response = await method.call('Bearer ' + token);
    if (response.isSuccessful) {
      return response.body!;
    } else if (response.statusCode == 401) {
      if (recursionCount == 1) {
        throw TokenExpiredException();
      }

      final refreshTokenResult = await authentication.refreshToken();
      return await refreshTokenResult.fold(
        (l) => throw TokenExpiredException(),
        (r) async {
          return await requestWithAuthentication(authentication: authentication, method: method, recursionCount: 1);
        },
      );
    } else {
      throw ServerException(response.statusCode, tryCast<String>(response.error) ?? response.bodyString);
    }
  }
}
