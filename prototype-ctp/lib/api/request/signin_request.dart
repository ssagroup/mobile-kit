
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_request.freezed.dart';
part 'signin_request.g.dart';

@freezed
class SigninRequest with _$SigninRequest {
  const factory SigninRequest({
    required String email,
    required String password,
    required bool rememberMe,
  }) = _SigninRequest;

  factory SigninRequest.fromJson(Map<String, dynamic> json) => _$SigninRequestFromJson(json);
}