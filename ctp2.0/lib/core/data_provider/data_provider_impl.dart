import 'package:ctp_mobile/core/api/api_client.dart';
import 'package:ctp_mobile/feature/home/data/datasource/local/chart_local_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/control_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/infrastructure_chart_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/kpi_chart_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/infrastructure_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/kpi_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/notification_remote_datasource.dart';
import 'package:ctp_mobile/feature/home/data/repository/alerts_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/repository/control_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/repository/chart_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/repository/infrastructure_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/repository/kpi_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/repository/settings_repository_impl.dart';
import 'package:ctp_mobile/feature/login/data/datasource/auth_local_datasource.dart';
import 'package:ctp_mobile/feature/login/data/datasource/auth_remote_datasource.dart';
import 'package:ctp_mobile/feature/login/data/repository/auth_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:ctp_mobile/feature/biometrics_auth/data/datasource/local/hive_biometrics_local_datasource_impl.dart';
import 'package:ctp_mobile/feature/biometrics_auth/data/repository/biometrics_auth_repository_impl.dart';
import 'package:ctp_mobile/feature/home/data/datasource/local/firebase_notifications_local_datasource_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_kit/mobile_kit.dart';

class DataProviderImpl extends DataProvider {
  final String stageBaseUrl = 'https://ctp-portal-staging.azurewebsites.net/api';
  final String prodBaseUrl = 'https://backend-ctp.ssa.group/api';
  final isProd = false;

  DataProviderImpl._(Box<String> box) {
    final storage = HiveStorage(box);
    final String baseUrl = isProd ? prodBaseUrl : stageBaseUrl;

    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      receiveTimeout: const Duration(seconds: 720),
      connectTimeout: const Duration(seconds: 720),
    ));
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(requestBody: true, requestHeader: false, responseBody: true));
    }
    final ApiClient client = ApiClient(dio);

    authNotifier = AuthenticationNotifier();

    final biometricsLocalDatasource = HiveBiometricsLocalDatasourceImpl(storage: storage);
    biometricsAuthRep = BiometricsAuthRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      localAuthDatasource: LocalAuthDatasource(),
    );

    authLocalDataSource = AuthLocalDataSourceImpl(storage: storage);
    authRep = AuthenticationRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      authNotifier: authNotifier,
      localDataSource: authLocalDataSource,
      remoteDataSource: AuthRemoteDataSourceImpl(client: client),
    );

    final controlRemoteDataSource = ControlRemoteDatasourceImpl(
      authentication: authRep,
      client: client,
    );
    controlRepository = ControlRepositoryImpl(remoteDataSource: controlRemoteDataSource);

    final notificationsLocalDataSource = FirebaseNotificationsLocalDatasourceImpl();
    final notificationRemoteDataSource = NotificationRemoteDatasourceImpl(
      client: client,
      authentication: authRep,
    );
    alertsRepository = AlertsRepositoryImpl(
        localDatasource: notificationsLocalDataSource, remoteDatasource: notificationRemoteDataSource);

    final kpiRemoteDataSource = KpiRemoteDatasourceImpl(
      authentication: authRep,
      client: client,
    );
    kpisRepository = KpiRepositoryImpl(remoteDatasource: kpiRemoteDataSource);

    final kpiChartRemoteDataSource = KpiChartRemoteDatasourceImpl(
      authentication: authRep,
      client: client,
    );
    final infraChartRemoteDataSource = InfrastructureChartRemoteDatasourceImpl(
      authentication: authRep,
      client: client,
    );
    final infraChartLocalDataSource = InfrastructureChartLocalDatasourceImpl();
    chartRepository = ChartRepositoryImpl(
        kpiChartRemoteDatasource: kpiChartRemoteDataSource,
        infrastructureChartLocalDatasource: infraChartLocalDataSource);

    final infrastructureRemoteDataSource = InfrastructureRemoteDatasourceImpl(
      authentication: authRep,
      client: client,
    );
    infrastructureRepository = InfrastructureRepositoryImpl(
        remoteDatasource: infrastructureRemoteDataSource,
        chartRemoteDatasource: infraChartRemoteDataSource,
        chartLocalDatasource: infraChartLocalDataSource,
    );

    settingsRepository = SettingsRepositoryImpl(localDatasource: authLocalDataSource);
  }

  static Future<DataProviderImpl> create() async {
    final path = (await getApplicationDocumentsDirectory()).path;
    final storagePath = '$path/cc-hive';
    return await DataProviderImpl._initialize(storagePath: storagePath);
  }

  static Future<DataProviderImpl> _initialize({
    required String storagePath,
  }) async {
    Hive.init(storagePath);
    final Box<String> box = await Hive.openBox<String>('');
    return DataProviderImpl._(box);
  }

  late final AuthLocalDataSourceImpl authLocalDataSource;
}
