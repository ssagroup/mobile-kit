import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/api/api_auth_client.dart';
import 'package:ctp_mobile/api/api_bot_client.dart';
import 'package:ctp_mobile/api/api_notification_client.dart';
import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/data/datasource/auth_local_datasource.dart';
import 'package:ctp_mobile/data/datasource/auth_remote_datasource.dart';
import 'package:ctp_mobile/data/datasource/bot_remote_datasource.dart';
import 'package:ctp_mobile/data/datasource/local_auth_datasource.dart';
import 'package:ctp_mobile/data/datasource/notification_remote_datasource.dart';
import 'package:ctp_mobile/data/datasource/notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/data/repository/authentication_repository.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/data/storage/hive_local_storage.dart';
import 'package:ctp_mobile/util/header_interceptor.dart';
import 'package:ctp_mobile/util/json_serializable_convertor.dart';
import 'package:hive/hive.dart';

/// Helps generate repositories needed for all local and remote interactions
class RepositoryHelper {
  late final AuthenticationRepositoryImpl authenticationRep;
  late final AuthLocalDataSourceImpl authLocalDataSource;
  late final BotRepositoryImpl botRep;
  late final NotificationRepositoryImpl notificationRep;
  late final NotificationsLocalDatasourceImpl notificationsDatasource;

  RepositoryHelper._(Box<String> box) {
    final storage = HiveStorage(box);

    const converter = JsonSerializableConverter({
      AuthInfo: AuthInfo.fromJson,
      SuccessResponse: SuccessResponse.fromJson,
      EmptyResponse: EmptyResponse.fromJson,
      BotInfo: BotInfo.fromJson,
      NotificationInfo: NotificationInfo.fromJson,
      StaticStatisticsInfo: StaticStatisticsInfo.fromJson,
      DynamicStatisticsInfo: DynamicStatisticsInfo.fromJson,
      StyleInfo: StyleInfo.fromJson,
    });

    final chopper = ChopperClient(
      baseUrl: Uri.tryParse('https://backend-ctp.ssa.group/api/v1.0/'),
      //'http://172.30.22.161/api/v1.0/'),//EnvironmentConfig.instance.appUrl),
      converter: converter,
      errorConverter: converter,
      interceptors: <RequestInterceptor>[HttpLoggingInterceptor(), HeaderInterceptor()],
      services: [
        // Create and pass an instance of the generated service to the client
        ApiAuthClient.create(),
        ApiBotClient.create(),
        ApiNotificationClient.create(),
      ],
    );

    notificationsDatasource = NotificationsLocalDatasourceImpl();

    final authClient = chopper.getService<ApiAuthClient>();

    authLocalDataSource = AuthLocalDataSourceImpl(storage: storage);
    authenticationRep = AuthenticationRepositoryImpl(
      localDataSource: authLocalDataSource,
      remoteDataSource: AuthRemoteDataSourceImpl(client: authClient),
      notificationsLocalDatasource: notificationsDatasource,
      localAuthDatasource: LocalAuthDatasource(),
    );

    final botClient = chopper.getService<ApiBotClient>();
    final botRemoteDataSource = BotRemoteDatasourceImpl(
      client: botClient,
      authentication: authenticationRep,
    );
    botRep = BotRepositoryImpl(remoteDataSource: botRemoteDataSource);

    final notificationClient = chopper.getService<ApiNotificationClient>();
    final notificationRemoteDataSource = NotificationRemoteDatasourceImpl(
      client: notificationClient,
      authentication: authenticationRep,
    );
    notificationRep = NotificationRepositoryImpl(remoteDataSource: notificationRemoteDataSource);
  }

  static Future<RepositoryHelper> generate({
    required String storagePath,
  }) async {
    Hive.init(storagePath);
    final Box<String> box = await Hive.openBox<String>('');
    return RepositoryHelper._(box);
  }
}
