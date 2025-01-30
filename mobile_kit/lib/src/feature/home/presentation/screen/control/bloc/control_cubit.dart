import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'control_cubit.freezed.dart';
part 'control_state.dart';

class ControlCubit extends Cubit<ControlState> {
  ControlCubit(LogoutUseCase logoutUseCase, GetUserInfoUseCase getUserInfoUseCase) : super(ControlState.initial()) {
    _logoutUseCase = logoutUseCase;
    _getUserInfoUseCase = getUserInfoUseCase;
    _getUserInfo();
  }

  late final LogoutUseCase _logoutUseCase;
  late final GetUserInfoUseCase _getUserInfoUseCase;

  Future<void> stopAllAction() async {

  }

  Future<void> _getUserInfo() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final user = await _getUserInfoUseCase.getUserInfo();
    emit(
      state.copyWith(
        username: user?.username.orEmpty,
        email: user?.email.orEmpty,
      ),
    );

    emit(state.copyWith(
      isLoading: false,
    ));
  }
}
