import 'package:hive/hive.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/login/data/datasource/local_auth_datasource.dart';
import 'package:mobile_kit_demo/feature/login/data/datasource/auth_local_datasource.dart';
import 'package:mobile_kit_demo/feature/login/data/repository/auth_repository_impl.dart';

/// Helps generate repository needed for all local and remote interactions
class DataProvider {
  DataProvider._(Box<String> box) {
    final storage = HiveStorage(box);

    authLocalDataSource = AuthLocalDataSourceImpl(storage: storage);
    authRep = AuthenticationRepositoryImpl(
      localDataSource: authLocalDataSource,
      localAuthDatasource: LocalAuthDatasource(),
    );

  }

  // static Future<DataProvider> generate({
  //   required String storagePath,
  // }) async {
  //   Hive.init(storagePath);
  //   final Box<String> box = await Hive.openBox<String>('');
  //   return DataProvider._(box);
  // }

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

  late AuthenticationRepositoryImpl authRep;
  late final AuthLocalDataSourceImpl authLocalDataSource;
}
