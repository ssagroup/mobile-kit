import 'package:mobile_kit_demo/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';

abstract class AuthenticationRepository {

  /// AUTHENTICATION
  Future<void> signIn({required AuthRequest request});

  Future<void> logout();

  // Future<String> get token;

  Future<bool> isLoggedIn();

  Stream<UserModel?> authStateChanges();

  Future<void> clear();

  /// SECURITY AND BIOMETRICS
  Future<bool> isPinSetup();

  Future<void> setupPin({required String pin});

  Future<void> enableBioAuth();

  Future<bool> authenticateBio();

  Future<String> get userPin;

  Future<bool> get isBioAvailable;

  Future<bool> get isBioEnabled;

}