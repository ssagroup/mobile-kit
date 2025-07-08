import 'package:ctp_mobile/feature/login/data/datasource/auth_local_datasource.dart';
import 'package:ctp_mobile/feature/login/data/datasource/auth_remote_datasource.dart';
import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl with BaseRepositoryMixin implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required BiometricsLocalDatasource biometricsLocalDatasource,
    required AuthenticationNotifier authNotifier,
    required AuthLocalDataSourceImpl localDataSource,
    required AuthRemoteDataSourceImpl remoteDataSource,
  })  : _biometricsLocalDatasource = biometricsLocalDatasource,
        _authNotifier = authNotifier,
        _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final BiometricsLocalDatasource _biometricsLocalDatasource;
  final AuthenticationNotifier _authNotifier;
  final AuthLocalDataSourceImpl _localDataSource;
  final AuthRemoteDataSourceImpl _remoteDataSource;

  final BehaviorSubject<UserModel?> _user = BehaviorSubject()..add(null);

  @override
  bool isInBackground = false;

  @override
  Future<bool> get isLoggedIn async {
    try {
      await _localDataSource.readAccessToken();
      return Future.value(true);
    } catch (error) {
      return Future.value(false);
    }
  }

  @override
  Future<AuthenticationState> get currentState async {
    return _authNotifier.state;
  }

  @override
  void setState(AuthenticationState state) {
    _authNotifier.setState(state);
  }

  @override
  Future<void> signIn({required AuthRequest request}) async {
    final res = genericErrorCatchOperation(asyncOperation: () async {
      final result = await _remoteDataSource.signIn(request: request);
      await _localDataSource.writeAccessToken(result.accessToken);
      await _localDataSource.writeRefreshToken(result.refreshToken);
      final user = UserModel(
        email: request.email,
        uid: '',
      );
      _user.add(user);
      return Future.value();
    });
  }

  @override
  Future<Either<Failure, void>> refreshToken() async {
    return genericErrorCatchOperation(asyncOperation: () async {
      final refreshToken = await _localDataSource.readRefreshToken();
      final result = await _remoteDataSource.refreshToken(refreshToken: refreshToken);
      await _localDataSource.writeAccessToken(result.accessToken);
      await _localDataSource.writeRefreshToken(result.refreshToken);
      return Future.value();
    });
  }

  @override
  Future<String> get token async {
    try {
      return await _localDataSource.readAccessToken();
    } on StorageException {
      return '';
    } catch (error) {
      return '';
    }
  }

  @override
  Future<void> logout() async {
    _user.add(null);

    // await _firebaseAuthInstance.signOut();
  }

  @override
  Future<void> clear() async {
    await _biometricsLocalDatasource.clear();
  }

  @override
  Future<UserModel?> get currentUser async {
    throw UnimplementedError();
  }

  @override
  Stream<UserModel?> get userStream {
    return _user.stream;
  }
}
