import 'package:ctp_mobile/feature/login/data/datasource/auth_local_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl({
    required AuthLocalDataSourceImpl localDatasource,
  })  : _localDataSource = localDatasource;

  final AuthLocalDataSourceImpl _localDataSource;

  @override
  Future<Either<Failure, UserModel?>> getUser() async {
    try {
      final userName = await _localDataSource.readUserName();
      final email = await _localDataSource.readUserEmail();
      return Right(UserModel(uid: '', userName: userName, email: email));
    } on StorageException {
      return Left(Failure.storage());
    } catch (error) {
      return Left(Failure.unknown(error));
    }
  }
}