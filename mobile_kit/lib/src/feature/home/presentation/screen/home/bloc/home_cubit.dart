import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../../../core/resources/assets.dart';
import '../../../../../../core/resources/colors.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../login/domain/model/user_model.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(GetUserInfoUseCase getUserInfoUseCase)
    : _getUserInfoUseCase = getUserInfoUseCase,
      super(HomeState.initial());

  final GetUserInfoUseCase _getUserInfoUseCase;

  Future<void> initialize() async {
    _getUserInfo();
  }

  Future<void> _getUserInfo() async {
    emit(state.copyWith(isLoading: true));
    final result = (await _getUserInfoUseCase.getUserInfo()).fold(
      (failure) {
        emit(state.copyWith(items: _getItemsByUserRole(null)));
        return ApiStatusFailure(failure.errorDescription);
      },
      (user) {
        emit(state.copyWith(userRole: user?.userRole, items: _getItemsByUserRole(user?.userRole)));
        return ApiStatusSuccess();
      },
    );
    emit(state.copyWith(apiStatus: result, isLoading: false));
  }

  List<HomeItem> _getItemsByUserRole(UserRole? role) {
    List<HomeItem> items = [HomeItem.control(), HomeItem.kpi(), HomeItem.settings()];
    if (role == UserRole.admin) {
      items.insert(0, HomeItem.infra());
    }
    return items;
  }
}
