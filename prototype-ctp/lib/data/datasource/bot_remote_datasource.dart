import 'package:ctp_mobile/api/api_bot_client.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/data/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/data/repository/authentication_repository.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:rxdart/rxdart.dart';

class BotRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  BotRemoteDatasourceImpl({
    required ApiBotClient client,
    required AuthenticationRepositoryImpl authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiBotClient _client;
  final AuthenticationRepositoryImpl _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<List<BotInfo>> getBots(StatisticsPeriod period) async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResponse<APIResult<BotInfo>>>(
        authentication: _authentication,
        method: (String auth) => _client.getBots(authorization: auth, period: period.apiValue),
      );
      _isFetchingSubject.add(false);
      return response.result.items;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  Future<StaticStatisticsInfo> getStaticStatistic() async {
    final response = await requestWithAuthentication<APIResponse<StaticStatisticsInfo>>(
      authentication: _authentication,
      method: (String auth) => _client.getStaticStatistics(authorization: auth),
    );
    return response.result;
  }

  Future<DynamicStatisticsInfo> getDynamicStatistic(StatisticsPeriod period) async {
    final response = await requestWithAuthentication<APIResponse<DynamicStatisticsInfo>>(
      authentication: _authentication,
      method: (String auth) => _client.getDynamicStatistics(authorization: auth, period: period.apiValue),
    );
    return response.result;
  }

  Future<SuccessResponse> startBot(int id) async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authentication: _authentication,
      method: (String auth) => _client.startBot(botId: id, authorization: auth, reason: 'Start from mobile'),
    );
    return response;
  }

  Future<SuccessResponse> stopBot(int id) async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authentication: _authentication,
      method: (String auth) => _client.stopBot(botId: id, authorization: auth),
    );
    return response;
  }

  Future<SuccessResponse> stopAll() async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authentication: _authentication,
      method: (String auth) => _client.stopAll(authorization: auth),
    );
    return response;
  }

  Future<StyleInfo> getStyles() async {
    final response = await requestWithAuthentication<APIResponse<StyleInfo>>(
      authentication: _authentication,
      method: (String auth) => _client.getStyles(authorization: auth),
    );
    return response.result;
  }
}
