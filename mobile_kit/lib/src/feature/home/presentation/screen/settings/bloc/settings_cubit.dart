import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/optional.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(LogoutUseCase logoutUseCase, GetUserInfoUseCase getUserInfoUseCase)
      : _logoutUseCase = logoutUseCase,
        _getUserInfoUseCase = getUserInfoUseCase,
        super(SettingsState.initial());

  final LogoutUseCase _logoutUseCase;
  final GetUserInfoUseCase _getUserInfoUseCase;

  Future<void> initialize() async {
    _getUserInfo();
  }

  Future<void> logoutAction() async {
    await _logoutUseCase.logout();
  }

  Future<void> _getUserInfo() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    final result = (await _getUserInfoUseCase.getUserInfo())
        .fold((failure) => ApiStatusFailure(failure.errorDescription), (user) {
      emit(
        state.copyWith(
          username: user?.userName.orEmpty,
          email: user?.email.orEmpty,
        ),
      );
      return ApiStatusSuccess();
    });
    emit(
      state.copyWith(
        apiStatus: result,
        isLoading: false,
      ),
    );
  }
}
