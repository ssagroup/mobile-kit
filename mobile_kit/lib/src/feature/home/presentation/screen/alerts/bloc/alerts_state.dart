part of 'alerts_cubit.dart';

@freezed
abstract class AlertsState with _$AlertsState implements ApiStatusState {
  const factory AlertsState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<NotificationModel> models,
    required bool trigger,
    required int skipCount,
    required int totalCount,
  }) = _AlertsState;

  factory AlertsState.initial() => AlertsState(
        isLoading: false,
        apiStatus: ApiStatusNone(),
        models: [],
        trigger: false,
        skipCount: 0,
        totalCount: 0,
      );

  const AlertsState._();

  bool get hasMore {
      return skipCount < totalCount;
  }
}
