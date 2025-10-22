import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    String? email,
    String? userName,
    required String uid,
    String? pushToken,
    String? authToken,
    String? refreshToken,
    UserRole? userRole,
  }) = _UserModel;

  const UserModel._();
}

enum UserRole {
  trader,
  admin,
  unknown;

  static UserRole fromString(String? role) {
    switch (role?.toLowerCase()) {
      case 'trader':
        return UserRole.trader;
      case 'admin':
        return UserRole.admin;
      default:
        return UserRole.unknown;
    }
  }
}