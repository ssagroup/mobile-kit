import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/data_model/responses.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/control_info.dart';
import 'package:mobile_kit/mobile_kit.dart';

class ControlRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  ControlRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<List<ControlInfo>> getControls() async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResultResponse<APIItemsResult<ControlInfo>>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getControls(
            authorization: auth,
            period: '1h',
            xCoin: 'USDT',
            runState: 'All',
            showArchive: false),

      );
      _isFetchingSubject.add(false);
      return response.result.items;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  Future<SuccessResponse> startBot(int id) async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authenticationRep: _authentication,
      method: (String auth) => _client.startBot(botId: id, authorization: auth, reason: 'Start from mobile'),
    );
    return response;
  }

  Future<SuccessResponse> stopBot(int id) async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authenticationRep: _authentication,
      method: (String auth) => _client.stopBot(botId: id, authorization: auth),
    );
    return response;
  }

  Future<SuccessResponse> stopAll() async {
    final response = await requestWithAuthentication<SuccessResponse>(
      authenticationRep: _authentication,
      method: (String auth) => _client.stopAll(authorization: auth),
    );
    return response;
  }
}
