part of 'verify_pin_cubit.dart';

@freezed
abstract class VerifyPinState with _$VerifyPinState {
  const factory VerifyPinState({
    required bool showError,
    required bool isBioEnabled,
  }) = _VerifyPinState;

  factory VerifyPinState.initial() => const VerifyPinState(
    showError: false,
    isBioEnabled: false,
  );
}
