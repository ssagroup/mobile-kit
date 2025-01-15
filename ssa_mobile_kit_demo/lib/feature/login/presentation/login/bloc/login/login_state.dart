part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required String? email,
    required String? emailError,
    required String? password,
    required String? passwordError,
    required AuthStatus loginStatus,
    required bool showPassword,
    required bool rememberMe,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
    isLoading: false,
    email: 'test@gmail.com',
    emailError: null,
    password: 'qwerty',
    passwordError: null,
    loginStatus: AuthStatus.none(),
    showPassword: true,
    rememberMe: false,
  );
}
