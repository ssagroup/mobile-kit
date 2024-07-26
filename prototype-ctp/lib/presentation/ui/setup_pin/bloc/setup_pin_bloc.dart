import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setup_pin_bloc.freezed.dart';

part 'setup_pin_state.dart';

class SetupPinBloc extends Cubit<SetupPinState> {
  SetupPinBloc({
    required AuthenticationBloc authRepository,
  })  : _authRepository = authRepository,
        super(SetupPinState.initial());

  final AuthenticationBloc _authRepository;

  Future<void> setupPin(String pin) async {
    _authRepository.setupPin(pin: pin);

    if (await _authRepository.isBioAvailable) {
      emit(state.copyWith(
          isBioAvailable: true,
      ));
    } else {
      _authRepository.completeBioSetup();
    }
  }

  Future<void> acceptBioAuth() async {
    _authRepository.enableBioAuth();
    _authRepository.completeBioSetup();
  }

  Future<void> rejectBioAuth() async {
    _authRepository.completeBioSetup();
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}