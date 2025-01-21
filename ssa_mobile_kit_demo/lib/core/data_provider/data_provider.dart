import 'package:hive/hive.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/data/datasource/local/hive_biometrics_local_datasource_impl.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/data/datasource/local_auth_datasource.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/data/repository/biometrics_auth_repository_impl.dart';
import 'package:mobile_kit_demo/feature/login/data/repository/firebase_auth_repository_impl.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

/// Helps generate repository needed for all local and remote interactions
class DataProvider {
  DataProvider._(Box<String> box) {
    final storage = HiveStorage(box);

    authNotifier = AuthenticationNotifier();

    biometricsLocalDatasource = HiveBiometricsLocalDatasourceImpl(storage: storage);
    authRep = FirebaseAuthenticationRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      authNotifier: authNotifier,
    );

    biometricsAuthRep = BiometricsAuthRepositoryImpl(
      biometricsLocalDatasource: biometricsLocalDatasource,
      localAuthDatasource: LocalAuthDatasource(),
    );
  }

  /// Get current [DataProvider] instance
  static DataProvider get instance {
    if (_instance != null) {
      return _instance!;
    }
    throw Exception();
  }

  static DataProvider? _instance;

  static Future<void> initialize({
    required String storagePath,
  }) async {
    Hive.init(storagePath);
    final Box<String> box = await Hive.openBox<String>('');
    _instance = DataProvider._(box);
  }

  late FirebaseAuthenticationRepositoryImpl authRep;
  late HiveBiometricsLocalDatasourceImpl biometricsLocalDatasource;
  late BiometricsAuthRepositoryImpl biometricsAuthRep;

  late AuthenticationNotifier authNotifier;
}
