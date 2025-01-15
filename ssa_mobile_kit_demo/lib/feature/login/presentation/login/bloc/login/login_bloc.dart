import 'package:mobile_kit/mobile_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit_demo/feature/login/domain/model/auth_status.dart';
import 'package:mobile_kit_demo/feature/login/domain/request/auth_request.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';

part 'login_bloc.freezed.dart';
part 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc(AuthenticationBloc authBloc)
      : super(LoginState.initial()) {
    _authBloc = authBloc;
  }

  late final AuthenticationBloc _authBloc;

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

    final emailError = validateEmail(state.email);
    final passwordError = validatePassword(state.password);

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
        (await _authBloc.signIn(request: request)).fold(
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
