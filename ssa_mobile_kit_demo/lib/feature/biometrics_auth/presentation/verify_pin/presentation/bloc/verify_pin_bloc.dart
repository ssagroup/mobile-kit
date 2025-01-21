import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/presentation/verify_pin/domain/usecase/verify_pin_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/logout_usecase.dart';

part 'verify_pin_bloc.freezed.dart';

part 'verify_pin_state.dart';

class VerifyPinBloc extends Cubit<VerifyPinState> {
  VerifyPinBloc({
    required VerifyPinUsecase verifyPinUsecase,
    required BiometricsUsecase biometricsUsecase,
    required LogoutUsecase logoutUsecase,
  })  : _verifyPinUsecase = verifyPinUsecase,
        _biometricsUsecase = biometricsUsecase,
        _logoutUsecase = logoutUsecase,
        super(VerifyPinState.initial()) {

    Future.delayed(const Duration(seconds: 0), () async {

      checkBioIfEnabled();
      final isActive = await biometricsUsecase.isBioEnabled;
      emit(state.copyWith(
        isBioEnabled: isActive,
      ));
    });
  }

  final VerifyPinUsecase _verifyPinUsecase;
  final BiometricsUsecase _biometricsUsecase;
  final LogoutUsecase _logoutUsecase;

  final _clearPinController = StreamController<bool>.broadcast();
  Stream<bool> get clearPinStream => _clearPinController.stream;

  Future<void> checkBioIfEnabled() async {
    if (await _biometricsUsecase.isBioEnabled) {
      await _biometricsUsecase.authenticateBio();
    }
  }

  Future<void> checkCode(String code) async {
    final result = await _verifyPinUsecase.checkPin(code);
    Future.delayed(const Duration(milliseconds: 400), () {
      if (!result) {
        _clearPinController.add(!result);
      }
    });
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

  @override
  Future<void> close() async {
    super.close();
    _clearPinController.close();
  }
}
