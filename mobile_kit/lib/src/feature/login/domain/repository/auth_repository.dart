import 'package:mobile_kit/src/feature/login/domain/model/user_model.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_notifier.dart';
import 'package:mobile_kit/src/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {

  Future<void> signIn({required AuthRequest request});

  Future<void> logout();

  Future<Either<Failure, void>> refreshToken();

  Future<String> get token;

  Future<bool> get isLoggedIn;

  Future<UserModel?> get currentUser;

  void setState(AuthenticationState state);

  Future<AuthenticationState> get currentState;

  Stream<UserModel?> get userStream;

  late bool isInBackground;

  Future<void> clear();

}