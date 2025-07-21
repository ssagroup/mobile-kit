
import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/data_model/api_response.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/kpi_info.dart';
import 'package:ctp_mobile/core/extension/string_extension.dart';
import 'package:mobile_kit/mobile_kit.dart';

class KpiRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  KpiRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<KpiInfo> getKpis(String period) async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<APIResultResponse<KpiInfo>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getKpis(
            authorization: auth,
            xCoin: 'USDT',
            statisticsForAllBots: true,
            period: period.toApiValue),
      );
      _isFetchingSubject.add(false);
      return response.result;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

}