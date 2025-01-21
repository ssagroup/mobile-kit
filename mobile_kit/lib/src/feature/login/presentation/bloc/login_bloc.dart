import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/validation.dart';
import 'package:mobile_kit/src/core/util/optional.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';
import 'package:mobile_kit/src/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/login_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc(LoginUseCase loginUseCase)
      : super(LoginState.initial()) {
    _loginUseCase = loginUseCase;
  }

  late final LoginUseCase _loginUseCase;

  void emailChanged(String email) {
    emit(
      state.copyWith(
        emailError: email != state.email ? null : state.emailError,
        email: email,
        loginStatus: const AuthStatus.none(),
      ),
    );
  }

  void passwordChanged(String password) {
    emit(
      state.copyWith(
        passwordError: password != state.password ? null : state.passwordError,
        password: password,
        loginStatus: const AuthStatus.none(),
      ),
    );
  }

  void changeVisibility() {
    emit(
      state.copyWith(
        showPassword: !state.showPassword,
      ),
    );
  }

  void changeRememberMe() {
    emit(
      state.copyWith(
        rememberMe: !state.rememberMe,
      ),
    );
  }

  Future<void> loginAction() async {
    emit(state.copyWith(
      loginStatus: const AuthStatus.none(),
    ));

    final emailError = await validateEmail(state.email);
    final passwordError = await validatePassword(state.password);

    if (emailError != null) {
      emit(
        state.copyWith(
          emailError: emailError,
        ),
      );
      return;
    }

    if (passwordError != null) {
      emit(
        state.copyWith(
          passwordError: passwordError,
        ),
      );
      return;
    }

    emit(state.copyWith(
      isLoading: true,
    ));

    final request = AuthRequest(
        email: state.email.orEmpty,
        password: state.password.orEmpty,
        rememberMe: state.rememberMe);
    final AuthStatus status =
        (await _loginUseCase.signIn(request: request)).fold(
      (failure) => AuthStatus.failure(failure.errorDescription, false),
      (_) => AuthStatus.success(request),
    );

    emit(state.copyWith(
      isLoading: false,
      loginStatus: status,
    ));

    emit(state.copyWith(
      loginStatus: const AuthStatus.none(),
    ));
  }
}
