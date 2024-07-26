import 'package:ctp_mobile/api/request/signin_request.dart';
import 'package:ctp_mobile/domain/entity/api_status.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/util/optional.dart';
import 'package:ctp_mobile/util/validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc({
    required AuthenticationBloc authRepository,
  })  : _authRepository = authRepository,
        super(LoginState.initial());

  final AuthenticationBloc _authRepository;

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

    final request = SigninRequest(
        email: state.email.orEmpty,
        password: state.password.orEmpty,
        rememberMe: state.rememberMe);
    final AuthStatus status =
        (await _authRepository.signIn(request: request)).fold(
      (failure) => AuthStatus.failure(failure.errorDescription, false),
      (r) => AuthStatus.success(request),
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