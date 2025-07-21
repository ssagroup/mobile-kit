import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/data_model/responses.dart';
import 'package:ctp_mobile/feature/home/data/model/infrastructure_details_info.dart';
import 'package:ctp_mobile/feature/home/data/model/infrastructure_info.dart';
import 'package:ctp_mobile/feature/home/data/model/kpi_chart_info.dart';
import 'package:ctp_mobile/feature/home/data/model/control_info.dart';
import 'package:ctp_mobile/feature/home/data/model/kpi_info.dart';
import 'package:ctp_mobile/feature/home/data/model/notification_info.dart';
import 'package:ctp_mobile/feature/login/data/model/response/auth_info.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:mobile_kit/mobile_kit.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) => _ApiClient(dio);

  // ---------------------------------- AUTH -----------------------------------
  @POST('/v1.0/auth/SignIn')
  Future<APIResultResponse<AuthInfo>> signIn({
    @Body() required AuthRequest request,
  });

  @POST('/v1.0/auth/RefreshToken')
  Future<APIResultResponse<AuthInfo>> refreshToken({
    @Field() String? refreshToken,
  });

  // ---------------------------------- NOTIFICATION -----------------------------
  @POST('/v1.0/notificationdevice/register')
  Future<SuccessResponse> registerFCM({
    @Header('Authorization') required String authorization,
    @Field() required String token,
    @Field() required String platform,
  });

  @POST('/v1.0/notificationdevice/unregister')
  Future<SuccessResponse> unregisterFCM({
    @Header('Authorization') required String authorization,
    @Field() required String token,
    @Field() required String platform,
  });

  @GET('/v1.0/notification')
  Future<APIResultResponse<APIItemsResult<NotificationInfo>>> getNotifications({
    @Header('Authorization') required String authorization,
  });

// ---------------------------------- INFRADASH -----------------------------------
  @GET('/InfraDash/dashboards/published')
  Future<List<InfrastructureInfo>> getInfrastructures({
    @Header('Authorization') required String authorization,
  });

  @GET('/InfraDash/dashboards/{dashboardId}')
  Future<InfrastructureDetailsInfo> getInfrastructureDetails({
    @Header('Authorization') required String authorization,
    @Path() required int dashboardId,
  });

  @POST('/InfraDash/grafana/dashboards/{dashboardUid}/panel/{panelId}')
  Future<APIDataResponse<APIResultsResponse>> getInfraChartData({
    @Header('Authorization') required String authorization,
    @Path() required String dashboardUid,
    @Path() required int panelId,
    @Query('period') int? period,
  });

// ---------------------------------- KPI -----------------------------------
  @GET('/v1.0/statistics/dashboard')
  Future<APIResultResponse<KpiInfo>> getKpis({
    @Header('Authorization') required String authorization,
    @Header('X-CoinForBalance') required String xCoin,
    @Query('StatisticsForAllBots') required bool statisticsForAllBots,
    @Query('Period') required String period,
  });

  @GET('/v1.0/statistics/dashboard/graphs')
  Future<APIResultResponse<APIDataResult<KpiChartInfo>>> getKpiChartData({
    @Header('Authorization') required String authorization,
    @Header('X-CoinForBalance') required String xCoin,
    @Query('StatisticsForAllBots') required bool statisticsForAllBots,
    @Query('Period') required String period,
  });

// ---------------------------------- CONTROL -----------------------------------
  @GET('/v1.0/bots')
  Future<APIResultResponse<APIItemsResult<ControlInfo>>> getControls({
    @Header('Authorization') required String authorization,
    @Header('X-CoinForBalance') required String xCoin,
    @Query('Period') required String period,
    @Query('RunState') required String runState,
    @Query('ShowArchive') required bool showArchive,
  });

  @POST('/v1.0/bots/{id}/start')
  Future<SuccessResponse> startBot({
    @Header('Authorization') required String authorization,
    @Path('id') required int botId,
    @Field('reason') required String reason,
  });

  @POST('/v1.0/bots/{id}/stop')
  Future<SuccessResponse> stopBot({
    @Header('Authorization') required String authorization,
    @Path('id') required int botId,
  });

  @POST('/v1.0/bots/stopall')
  Future<SuccessResponse> stopAll({
    @Header('Authorization') required String authorization,
    @Field('instrumentOrCoin') String? instrumentOrCoin,
  });
}
