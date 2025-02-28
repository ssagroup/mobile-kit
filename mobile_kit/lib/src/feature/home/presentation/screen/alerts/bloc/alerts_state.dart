part of 'alerts_cubit.dart';

@freezed
class AlertsState with _$AlertsState implements ApiStatusState {
  const factory AlertsState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<NotificationModel> models,
    required bool trigger,
  }) = _AlertsState;

  factory AlertsState.initial() => AlertsState(
        isLoading: false,
        apiStatus: ApiStatusNone(),
        models: [],
        trigger: false,
      );
}
