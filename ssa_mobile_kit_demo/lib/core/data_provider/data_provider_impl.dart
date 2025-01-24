import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/data/datasource/local/hive_biometrics_local_datasource_impl.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/data/repository/biometrics_auth_repository_impl.dart';
import 'package:mobile_kit_demo/feature/login/data/repository/firebase_auth_repository_impl.dart';

/// Helps generate repository needed for all local and remote interactions
class DataProviderImpl extends DataProvider {
  DataProviderImpl._(Box<String> box) {
    final storage = HiveStorage(box);

    authNotifier = AuthenticationNotifier();

    final biometricsLocalDatasource = HiveBiometricsLocalDatasourceImpl(storage: storage);
    authRep = FirebaseAuthenticationRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      authNotifier: authNotifier,
    );

    biometricsAuthRep = BiometricsAuthRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      localAuthDatasource: LocalAuthDatasource(),
    );
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
}