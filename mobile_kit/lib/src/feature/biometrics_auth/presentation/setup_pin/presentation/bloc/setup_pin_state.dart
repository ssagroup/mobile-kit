part of 'setup_pin_cubit.dart';

@freezed
class SetupPinState with _$SetupPinState {
  const factory SetupPinState({
    required bool isBioAvailable,
  }) = _SetupPinState;

  factory SetupPinState.initial() => const SetupPinState(
    isBioAvailable: false,
  );
}