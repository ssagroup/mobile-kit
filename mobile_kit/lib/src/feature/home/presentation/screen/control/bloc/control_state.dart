part of 'control_cubit.dart';

@freezed
class ControlState with _$ControlState {
  const factory ControlState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<ControlModel> controls,
    required bool isStopAllActive,
    required bool isActionsDisabled,
    required bool trigger,
  }) = _ControlState;

  factory ControlState.initial() => const ControlState(
        isLoading: false,
        apiStatus: ApiStatus.none(),
        controls: [],
        isStopAllActive: false,
        isActionsDisabled: false,
        trigger: false,
      );
}
