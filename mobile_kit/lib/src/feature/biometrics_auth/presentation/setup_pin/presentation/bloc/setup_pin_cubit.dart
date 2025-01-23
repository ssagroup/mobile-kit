import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/setup_pin_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

part 'setup_pin_cubit.freezed.dart';

part 'setup_pin_state.dart';

class SetupPinCubit extends Cubit<SetupPinState> {
  SetupPinCubit({
    required BiometricsUsecase biometricUsecase,
    required SetupPinUsecase setupPinUsecase,
    required LogoutUsecase logoutUsecase,
  })  : _biometricUsecase = biometricUsecase,
        _setupPinUsecase = setupPinUsecase,
        _logoutUseCase = logoutUsecase,
        super(SetupPinState.initial());

  final BiometricsUsecase _biometricUsecase;
  final SetupPinUsecase _setupPinUsecase;
  final LogoutUsecase _logoutUseCase;

  Future<void> setupPin(String pin) async {
    await _setupPinUsecase.setupPin(pin: pin);

    if (await _biometricUsecase.isBioAvailable) {
      emit(state.copyWith(
          isBioAvailable: true,
      ));
    } else {
      _biometricUsecase.completeBioSetup();
    }
  }

  Future<void> acceptBioAuth() async {
    _biometricUsecase.enableBioAuth();
    _biometricUsecase.completeBioSetup();
  }

  Future<void> rejectBioAuth() async {
    _biometricUsecase.completeBioSetup();
  }

  Future<void> logout() async {
    await _logoutUseCase.logout();
  }
}