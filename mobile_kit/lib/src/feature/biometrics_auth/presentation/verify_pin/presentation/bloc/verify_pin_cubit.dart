import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/verify_pin/domain/usecase/verify_pin_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

part 'verify_pin_cubit.freezed.dart';

part 'verify_pin_state.dart';

class VerifyPinCubit extends Cubit<VerifyPinState> {
  VerifyPinCubit({
    required VerifyPinUsecase verifyPinUsecase,
    required BiometricsUsecase biometricsUsecase,
    required LogoutUseCase logoutUsecase,
  })  : _verifyPinUsecase = verifyPinUsecase,
        _biometricsUsecase = biometricsUsecase,
        _logoutUsecase = logoutUsecase,
        super(VerifyPinState.initial());

  final VerifyPinUsecase _verifyPinUsecase;
  final BiometricsUsecase _biometricsUsecase;
  final LogoutUseCase _logoutUsecase;

  Future<void> initialize() async {
    checkBioIfEnabled();
    final isActive = await _biometricsUsecase.isBioEnabled;
    emit(state.copyWith(
      isBioEnabled: isActive,
    ));
  }

  Future<void> checkBioIfEnabled() async {
    if (await _biometricsUsecase.isBioEnabled) {
      await _biometricsUsecase.authenticateBio();
    }
  }

  Future<void> checkCode(String code) async {
    final result = await _verifyPinUsecase.checkPin(code);
    emit(state.copyWith(
      showError: !result,
    ));
    emit(state.copyWith(
      showError: false,
    ));
  }

  Future<void> logout() async {
    await _logoutUsecase.logout();
  }
}
