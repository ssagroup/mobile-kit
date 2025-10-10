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
  }) = _UserModel;

  const UserModel._();
}
