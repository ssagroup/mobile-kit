
import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/api/request/signin_request.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';

part 'api_auth_client.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class ApiAuthClient extends ChopperService {
  static ApiAuthClient create() {
    return _$ApiAuthClient();
  }
  //----------------------------------------------------- AUTHENTICATION -----------------------------------------------

  @Post(path: 'auth/SignIn')
  Future<Response<APIResponse<AuthInfo>>> signIn({
    @Body() required SigninRequest request,
  });

  @Post(path: 'auth/RefreshToken')
  Future<Response<APIResponse<AuthInfo>>> refreshToken({
    @Field() String? refreshToken,
  });

  @Post(path: 'notificationdevice/register')
  Future<Response<SuccessResponse>> registerFCM({
    @Header('Authorization') required String authorization,
    @Field() required String token,
    @Field() required String platform,
  });

  @Post(path: 'notificationdevice/unregister')
  Future<Response<SuccessResponse>> unregisterFCM({
    @Header('Authorization') required String authorization,
    @Field() required String token,
    @Field() required String platform,
  });
}
