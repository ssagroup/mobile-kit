part of 'notification_list_bloc.dart';

@freezed
class NotificationListState with _$NotificationListState {
  const factory NotificationListState({
    required bool isLoading,
    required List<NotificationInfo> info,
    required AuthStatus authApiStatus,
    required bool trigger,
    required bool isStopActive,
  }) = _NotificationListState;

  factory NotificationListState.initial() => const NotificationListState(
    isLoading: false,
    info: [],
    authApiStatus: AuthStatus.none(),
    trigger: false,
    isStopActive: false,
  );
}