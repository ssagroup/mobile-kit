import 'package:mobile_kit_demo/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/feature/login/domain/repository/auth_notifier.dart';

/// FIREBASE AUTHENTICATION
abstract class AuthenticationRepository {

  Future<void> signIn({required AuthRequest request});

  Future<void> logout();

  Future<bool> get isLoggedIn;

  void setState(AuthenticationState state);

  Future<AuthenticationState> get currentState;

  Stream<UserModel?> get userStream;

  late bool isInBackground;

  Future<void> clear();

}