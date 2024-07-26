import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';

part 'api_bot_client.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class ApiBotClient extends ChopperService {
  static ApiBotClient create() {
    return _$ApiBotClient();
  }

  @Get(path: 'bots')
  Future<Response<APIResponse<APIResult<BotInfo>>>> getBots({
    @Header('Authorization') required String authorization,
    @Query('Period') required String period,
  });

  @Post(path: 'bots/{id}/start')
  Future<Response<SuccessResponse>> startBot({
    @Path('id') required int botId,
    @Header('Authorization') required String authorization,
    @Field('reason') required String reason,
  });

  @Post(path: 'bots/{id}/stop', optionalBody: true)
  Future<Response<SuccessResponse>> stopBot({
    @Path('id') required int botId,
    @Header('Authorization') required String authorization,
  });

  @Post(path: 'bots/stopall', optionalBody: true)
  Future<Response<SuccessResponse>> stopAll({
    @Header('Authorization') required String authorization,
  });

  @Get(path: 'statistics/mobile/static')
  Future<Response<APIResponse<StaticStatisticsInfo>>> getStaticStatistics({
    @Header('Authorization') required String authorization,
  });

  @Get(path: 'statistics/mobile/dynamic')
  Future<Response<APIResponse<DynamicStatisticsInfo>>> getDynamicStatistics({
    @Header('Authorization') required String authorization,
    @Query('Period') required String period,
  });

  @Get(path: 'statistics/mobile/styles')
  Future<Response<APIResponse<StyleInfo>>> getStyles({
    @Header('Authorization') required String authorization,
  });
}
