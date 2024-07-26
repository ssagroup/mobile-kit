import 'dart:async';

import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/domain/entity/api_status.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/util/either_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list_bloc.freezed.dart';

part 'notification_list_state.dart';

class NotificationListBloc extends Cubit<NotificationListState> {
  BotRepositoryImpl botsRepository;
  NotificationRepositoryImpl notificationsRepository;
  AuthenticationBloc authRepository;
  List<StreamSubscription> subscriptions = [];

  NotificationListBloc(this.botsRepository, this.notificationsRepository, this.authRepository) : super(NotificationListState.initial()) {
    subscriptions.add(notificationsRepository.notifications.listen((notifications) {
      emit(state.copyWith(
        info: notifications,
      ));
    }));

    subscriptions.add(notificationsRepository.unreadNotificationsCount.listen((count) {
      if (count > 0) {
        Future.delayed(const Duration(seconds: 2), () async {
          await notificationsRepository.markAllAsRead();
        });
      }
    }));

    subscriptions.add(botsRepository.bots.listen((bots) {
      final activeBots = bots.where((element) => element.isRunning && !element.isActionsDisabled);
      emit(state.copyWith(
        isStopActive: activeBots.isNotEmpty,
      ));
    }));
  }

  Future<void> stopAllBotsAction() async {
    final AuthStatus status = (await botsRepository.stopAll()).map<Unit>((r) => unit).foldedAuthStatus;

    emit(state.copyWith(
      authApiStatus: status,
    ));

    emit(state.copyWith(
      authApiStatus: const AuthStatus.none(),
    ));
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
