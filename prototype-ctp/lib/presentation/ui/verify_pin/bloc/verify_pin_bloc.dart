import 'dart:async';

import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_pin_bloc.freezed.dart';

part 'verify_pin_state.dart';

class VerifyPinBloc extends Cubit<VerifyPinState> {
  VerifyPinBloc({
    required AuthenticationBloc authRepository,
  })  : _authRepository = authRepository,
        super(VerifyPinState.initial()) {
    Future.delayed(const Duration(seconds: 0), () async {
      checkBioIfEnabled();
      final isActive = await _authRepository.isBioEnabled;
      emit(state.copyWith(
        isBioEnabled: isActive,
      ));
    });
  }

  final AuthenticationBloc _authRepository;
  final _clearPinController = StreamController<bool>.broadcast();
  Stream<bool> get clearPinStream => _clearPinController.stream;

  Future<void> checkBioIfEnabled() async {
    if (await _authRepository.isBioEnabled) {
      await _authRepository.authenticateBio();
    }
  }

  Future<void> checkCode(String code) async {
    final result = await _authRepository.checkPin(code);
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
    await _authRepository.logout();
  }
  @override Future<void> close() async {
    super.close();
    _clearPinController.close();
  }
}