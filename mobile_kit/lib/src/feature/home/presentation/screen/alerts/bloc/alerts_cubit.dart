import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
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
    await _getAllNotificationsUseCase.invoke();
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
