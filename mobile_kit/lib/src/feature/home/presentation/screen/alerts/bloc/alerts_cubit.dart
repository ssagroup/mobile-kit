import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_notifications_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'alerts_cubit.freezed.dart';
part 'alerts_state.dart';

class AlertsCubit extends Cubit<AlertsState> {
  AlertsCubit(
    GetAllNotificationsUseCase getAllNotificationsUseCase,
  )   : _getAllNotificationsUseCase = getAllNotificationsUseCase,
        super(AlertsState.initial()) {
    subscriptions.add(_getAllNotificationsUseCase.notifications.listen((notifications) {
      _updateNotifications(notifications);
    }));

    subscriptions.add(_getAllNotificationsUseCase.pushMessage.listen((unit) {
      refresh();
    }));
  }

  List<StreamSubscription> subscriptions = [];
  GetAllNotificationsUseCase _getAllNotificationsUseCase;

  Future<void> initialize() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    await refresh();
    emit(state.copyWith(
      isLoading: false,
    ));
  }

  Future<void> refresh() async {
    final ApiStatus status =
    (await _getAllNotificationsUseCase.invoke()).fold((l) => ApiStatusFailure(), (r) => ApiStatusSuccess());
    emit(state.copyWith(
      apiStatus: status,
    ));
    emit(state.copyWith(
      apiStatus: ApiStatusNone(),
    ));
  }

  void _updateNotifications(List<NotificationModel> notifications) {
    emit(state.copyWith(
      models: notifications,
      trigger: !state.trigger,
    ));
  }

  void enterForeground() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (!isClosed) {
        refresh();
      }
    });
  }

  @override
  Future<void> close() async {
    super.close();

    subscriptions.forEach(
      (element) => element.cancel(),
    );
    subscriptions.clear();
  }
}
