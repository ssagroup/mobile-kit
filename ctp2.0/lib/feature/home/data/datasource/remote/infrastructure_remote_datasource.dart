
import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/core/datasource/base_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/model/infrastructure_details_info.dart';
import 'package:ctp_mobile/feature/home/data/model/infrastructure_info.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureRemoteDatasourceImpl with BaseRemoteDataSourceMixin {
  InfrastructureRemoteDatasourceImpl({
    required ApiClient client,
    required AuthenticationRepository authentication,
  })  : _client = client,
        _authentication = authentication;

  final ApiClient _client;
  final AuthenticationRepository _authentication;
  final _isFetchingSubject = BehaviorSubject<bool>();

  Stream<bool> get isFetching => _isFetchingSubject.stream;

  Future<List<InfrastructureInfo>> getInfrastructure() async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<List<InfrastructureInfo>>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getInfrastructures(authorization: auth),
      );
      _isFetchingSubject.add(false);
      return response;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }

  Future<InfrastructureDetailsInfo> getInfrastructureDetails(int dashboardId) async {
    _isFetchingSubject.add(true);
    try {
      final response = await requestWithAuthentication<InfrastructureDetailsInfo>(
        authenticationRep: _authentication,
        method: (String auth) => _client.getInfrastructureDetails(authorization: auth, dashboardId: dashboardId),
      );
      _isFetchingSubject.add(false);
      return response;
    } catch (_) {
      _isFetchingSubject.add(false);
      rethrow;
    }
  }
}