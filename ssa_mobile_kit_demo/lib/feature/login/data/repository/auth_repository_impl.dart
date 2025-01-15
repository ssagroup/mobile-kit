import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit_demo/feature/login/data/datasource/local_auth_datasource.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/login/data/datasource/auth_local_datasource.dart';
import 'package:mobile_kit_demo/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/shared/domain/entity/failure.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required AuthLocalDataSourceImpl localDataSource,
    // required NotificationsLocalDatasourceImpl notificationsLocalDatasource,
    required LocalAuthDatasource localAuthDatasource,
  })  : _localDataSource = localDataSource,
        // _notificationsLocalDatasource = notificationsLocalDatasource,
        _localAuthDatasource = localAuthDatasource;

  final AuthLocalDataSourceImpl _localDataSource;
  // final NotificationsLocalDatasourceImpl _notificationsLocalDatasource;
  final LocalAuthDatasource _localAuthDatasource;

  @override
  Future<bool> isLoggedIn() async {
    return FirebaseAuth.instance.currentUser != null;
  }

  @override
  Future<void> signIn({required AuthRequest request}) async {
    try {
      final credential = FirebaseAuth.instance.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw CredentialsInvalidException();
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw CredentialsInvalidException();
      }
    } catch (e) {
      throw ServerException(-1001, 'Auth error');
    }
  }

  @override
  Stream<UserModel?> authStateChanges() {
    return FirebaseAuth.instance
        .authStateChanges()
        .map((user) => user != null ? UserModel((user.email).orEmpty) : null);
  }

  @override
  Future<void> logout() async {
      // final authToken = await token;
      // final fcm = _notificationsLocalDatasource.lastFcmToken;
      // if (fcm != null) {
      //   await _remoteDataSource.unregisterFCM(fcm, authToken);
      // }
      await FirebaseAuth.instance.signOut();
  }

  @override
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

  @override
  Future<void> setupPin({required String pin}) async {
    await _localDataSource.writeUserPin(pin);
    return Future.value();
  }

  @override
  Future<void> enableBioAuth() async {
    await _localDataSource.writeIsBioEnabled(true);
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
      return await _localDataSource.readUserPin();
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
      return await _localDataSource.readIsBioEnabled();
    } catch (error) {
      return false;
    }
  }

  @override
  Future<void> clear() async {
    await _localDataSource.clear();

    // subscriptions.forEach(
    //       (element) => element.cancel(),
    // );
    // subscriptions.clear();
  }
}