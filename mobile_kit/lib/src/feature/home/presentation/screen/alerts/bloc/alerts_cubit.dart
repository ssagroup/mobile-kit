import 'dart:async';

import 'package:flutter/foundation.dart';
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
      GetNotificationsPageUseCase getNotificationsPageUseCase,
  )   : _getNotificationsPageUseCase = getNotificationsPageUseCase,
        super(AlertsState.initial()) {

    subscriptions.add(_getNotificationsPageUseCase.pushMessage.listen((unit) {
      refresh();
    }));
  }

  List<StreamSubscription> subscriptions = [];
  GetNotificationsPageUseCase _getNotificationsPageUseCase;
  DateTime? _lastFailureApiCall;

  Future<void> initialize() async {
    await refresh();
  }

  Future<void> refresh() async {
    emit(state.copyWith(
      skipCount: 0,
      models: [],
    ));
    await loadNextPage();
  }

  Future<void> loadNextPage() async {
    if (state.isLoading) {
      return;
    }

    if (_lastFailureApiCall != null && DateTime.now().difference(_lastFailureApiCall!).inSeconds < 3) {
      return;
    }

    emit(state.copyWith(
      isLoading: true,
    ));

    final ApiStatus status = (await _getNotificationsPageUseCase.invoke(skipCount: state.skipCount))
        .fold((l) => ApiStatusFailure(), (r) => ApiStatusSuccess(r));

    switch (status) {
      case ApiStatusSuccess(result: Object? result):
        emit(state.copyWith(
          skipCount: state.skipCount + (result as PaginatedNotificationModel).models.length,
          totalCount: result.totalCount,
          models: state.models + result.models,
        ));
        _lastFailureApiCall = null;
      case ApiStatusFailure():
        _lastFailureApiCall = DateTime.now();
      default:
        break;
    }

    emit(state.copyWith(
      apiStatus: status,
      isLoading: false,
    ));
    emit(state.copyWith(
      apiStatus: ApiStatusNone(),
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
