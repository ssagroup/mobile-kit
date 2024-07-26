import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';

part 'api_notification_client.chopper.dart';

@ChopperApi(baseUrl: 'notification/')
abstract class ApiNotificationClient extends ChopperService {
  static ApiNotificationClient create() {
    return _$ApiNotificationClient();
  }

  @Get(path: '')
  Future<Response<APIResponse<APIResult<NotificationInfo>>>> getNotifications({
    @Header('Authorization') required String authorization,
  });

  @Post(path: 'readall', optionalBody: true)
  Future<Response<SuccessResponse>> markAllAsRead({
    @Header('Authorization') required String authorization,
  });
}
