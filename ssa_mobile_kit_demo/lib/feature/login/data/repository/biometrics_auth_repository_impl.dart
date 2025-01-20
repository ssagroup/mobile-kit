import 'package:mobile_kit_demo/feature/login/data/datasource/local/biometrics_local_datasource.dart';
import 'package:mobile_kit_demo/feature/login/data/datasource/local_auth_datasource.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit_demo/shared/domain/entity/failure.dart';

class BiometricsAuthRepositoryImpl implements BiometricsAuthRepository {

  BiometricsAuthRepositoryImpl({
    required BiometricsLocalDatasource biometricsLocalDatasource,
    required LocalAuthDatasource localAuthDatasource,
  })  : _biometricsLocalDatasource = biometricsLocalDatasource,
        _localAuthDatasource = localAuthDatasource;

  final BiometricsLocalDatasource _biometricsLocalDatasource;
  final LocalAuthDatasource _localAuthDatasource;

  @override
  Future<bool> isPinSetup() async {
    try {
      await _biometricsLocalDatasource.readUserPin();
      return Future.value(true);
    } on StorageException {
      return Future.value(false);
    } catch (error) {
      return Future.value(false);
    }
  }

  @override
  Future<void> setupPin({required String pin}) async {
    await _biometricsLocalDatasource.writeUserPin(pin);
    return Future.value();
  }

  @override
  Future<void> enableBioAuth() async {
    await _biometricsLocalDatasource.writeIsBioEnabled(true);
    return Future.value();
  }

  @override
  Future<bool> authenticateBio() async {
    try {
      return await _localAuthDatasource.authenticateBio();
    } catch (error) {
      return false;
    }
  }

  @override
  Future<String> get userPin async {
    try {
      return await _biometricsLocalDatasource.readUserPin();
    } catch (error) {
      return '';
    }
  }

  @override
  Future<bool> get isBioAvailable {
    return _localAuthDatasource.canAuthenticate;
  }

  @override
  Future<bool> get isBioEnabled async {
    try {
      return await _biometricsLocalDatasource.readIsBioEnabled();
    } catch (error) {
      return false;
    }
  }

  @override
  Future<void> writeLastActiveSessionTime(String value) async {
    await _biometricsLocalDatasource.writeLastActiveSessionTime(value);
  }

  @override
  Future<String> readLastActiveSessionTime() async {
    return await readLastActiveSessionTime();
  }

}