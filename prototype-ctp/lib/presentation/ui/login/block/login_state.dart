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
        email: null,
        emailError: null,
        password: null,
        passwordError: null,
        loginStatus: AuthStatus.none(),
        showPassword: true,
        rememberMe: false,
      );
}
