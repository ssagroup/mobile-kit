part of 'control_cubit.dart';

@freezed
class ControlState with _$ControlState implements ApiStatusState {
  const factory ControlState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<ControlModel> models,
    required bool isStopAllActive,
    required bool isActionsDisabled,
    required bool trigger,
  }) = _ControlState;

  factory ControlState.initial() => ControlState(
        isLoading: false,
        apiStatus: ApiStatusNone(),
        models: [],
        isStopAllActive: false,
        isActionsDisabled: false,
        trigger: false,
      );
}
