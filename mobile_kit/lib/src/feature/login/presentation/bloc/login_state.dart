part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required String? email,
    required ValidationError? emailError,
    required String? password,
    required ValidationError? passwordError,
    required AuthStatus loginStatus,
    required bool showPassword,
    required bool rememberMe,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    isLoading: false,
    email: 'test1@gmail.com',
    emailError: null,
    password: 'qwerty',
    passwordError: null,
    loginStatus: AuthStatusNone(),
    showPassword: true,
    rememberMe: false,
  );
}
