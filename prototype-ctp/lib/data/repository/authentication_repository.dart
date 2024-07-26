import 'dart:async';

import 'package:ctp_mobile/api/request/signin_request.dart';
import 'package:ctp_mobile/data/datasource/auth_local_datasource.dart';
import 'package:ctp_mobile/data/datasource/auth_remote_datasource.dart';
import 'package:ctp_mobile/data/datasource/local_auth_datasource.dart';
import 'package:ctp_mobile/data/datasource/notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/data/repository/base_repository.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl with BaseRepositoryMixin {
  AuthenticationRepositoryImpl({
    required AuthLocalDataSourceImpl localDataSource,
    required AuthRemoteDataSourceImpl remoteDataSource,
    required NotificationsLocalDatasourceImpl notificationsLocalDatasource,
    required LocalAuthDatasource localAuthDatasource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _notificationsLocalDatasource = notificationsLocalDatasource,
        _localAuthDatasource = localAuthDatasource;

  final AuthLocalDataSourceImpl _localDataSource;
  final AuthRemoteDataSourceImpl _remoteDataSource;
  final NotificationsLocalDatasourceImpl _notificationsLocalDatasource;
  final LocalAuthDatasource _localAuthDatasource;

  List<StreamSubscription> subscriptions = [];

  Future<bool> isLoggedIn() async {
    try {
      await _localDataSource.readAccessToken();
      return Future.value(true);
    } catch (error) {
      return Future.value(false);
    }
  }

  Future<Either<Failure, void>> logout() async {
    try {
      final authToken = await token;
      final fcm = _notificationsLocalDatasource.lastFcmToken;
      if (fcm != null) {
        await _remoteDataSource.unregisterFCM(fcm, authToken);
      }
      await clear();
      return const Right(unit);
    } catch (error) {
      await clear();
      return const Right(unit);
    }
  }

  Future<String> get token async {
    try {
      return await _localDataSource.readAccessToken();
    } on StorageException {
      return '';
    } catch (error) {
      return '';
    }
  }

  Future<bool> isPinSetup() async {
    try {
      await _localDataSource.readUserPin();
      return Future.value(true);
    } on StorageException {
      return Future.value(false);
    } catch (error) {
      return Future.value(false);
    }
  }

  Future<String> get userPin async {
    try {
      return await _localDataSource.readUserPin();
    } catch (error) {
      return '';
    }
  }

  Future<bool> get isBioEnabled async {
    try {
      return await _localDataSource.readIsBioEnabled();
    } catch (error) {
      return false;
    }
  }

  Future<bool> authenticateBio() async {
    try {
      return await _localAuthDatasource.authenticateBio();
    } catch (error) {
      return false;
    }
  }

  Future<Either<Failure, void>> signIn({required SigninRequest request}) async {
    return genericErrorCatchOperation(asyncOperation: () async {
      final result = await _remoteDataSource.signIn(request: request);
      await _localDataSource.writeAccessToken(result.accessToken);
      await _localDataSource.writeRefreshToken(result.refreshToken);

      return Future.value();
    });
  }

  Future<void> setupPin({required String pin}) async {
    await _localDataSource.writeUserPin(pin);
    return Future.value();
  }

  Future<bool> get isBioAvailable {
    return _localAuthDatasource.canAuthenticate;
  }

  Future<void> enableBioAuth() async {
    await _localDataSource.writeIsBioEnabled(true);
    return Future.value();
  }

  Future<Either<Failure, void>> refreshToken() async {
    return genericErrorCatchOperation(asyncOperation: () async {
      final refreshToken = await _localDataSource.readRefreshToken();
      final result = await _remoteDataSource.refreshToken(refreshToken: refreshToken);
      await _localDataSource.writeAccessToken(result.accessToken);
      await _localDataSource.writeRefreshToken(result.refreshToken);
      return Future.value();
    });
  }

  void trackAndUpdateFCMToken() {
    if (subscriptions.isNotEmpty) {
      return;
    }

    _notificationsLocalDatasource.askForPermissions();

    subscriptions.add(
      _notificationsLocalDatasource.fcmToken.listen((value) {
        if (value != null) {
          genericErrorCatchOperation(asyncOperation: () async {
            final authToken = await token;
            await _remoteDataSource.registerFCM(value, authToken);
          });
        }
      }),
    );
  }

  Future<void> clear() async {
    await _localDataSource.clear();

    subscriptions.forEach(
      (element) => element.cancel(),
    );
    subscriptions.clear();
  }
}
