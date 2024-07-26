import 'dart:async';

import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/data/datasource/notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:ctp_mobile/domain/entity/api_status.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/block/bot_list_state.dart';
import 'package:ctp_mobile/util/either_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BotListBloc extends Cubit<BotListState> {
  BotRepositoryImpl botsRepository;
  NotificationRepositoryImpl notificationsRepository;
  NotificationsLocalDatasourceImpl notificationLocalDatasource;
  AuthenticationBloc authRepository;
  List<StreamSubscription> subscriptions = [];

  bool isInBackground = false;

  BotListBloc(this.botsRepository, this.notificationsRepository, this.notificationLocalDatasource, this.authRepository)
      : super(BotListState.initial()) {
    subscriptions.add(botsRepository.bots.listen((bots) {
      final activeBots = bots.where((element) => element.isRunning && !element.isActionsDisabled);
      emit(state.copyWith(
        bots: bots,
        trigger: !state.trigger,
        isStopActive: activeBots.isNotEmpty,
        activeBotCount: activeBots.length,
      ));
    }));

    subscriptions.add(botsRepository.isFetching.listen((isFetching) {
      emit(state.copyWith(
        isLoading: isFetching,
      ));
    }));

    subscriptions.add(notificationsRepository.unreadNotificationsCount.listen((unreadNotifications) {
      emit(state.copyWith(
        notificationBadge: unreadNotifications,
      ));
    }));

    subscriptions.add(notificationLocalDatasource.pushMessage.listen((_) {
      notificationsRepository.fetchNotifications();
    }));

    loadStyles();

    loadData();
  }

  Future<void> loadData() async {
    loadStaticStatistics();
    loadDynamicStatistics();
    fetchBots();
    notificationsRepository.fetchNotifications();
  }

  Future<void> fetchBots() async {
    await botsRepository.fetchBots(state.periodFilter);
  }

  Future<void> loadDynamicStatistics() async {
    emit(
      state.copyWith(dynamicStatistic: null),
    );

    final eitherResult = await botsRepository.fetchDynamicStatistics(state.periodFilter);
    final AuthStatus status = eitherResult.fold((failure) {
      return AuthStatus.failure(failure.errorDescription, failure == Failure.notAuthorized());
    }, (value) {
      emit(state.copyWith(
        dynamicStatistic: value,
      ));
      return const AuthStatus.success();
    });

    emit(state.copyWith(
      authApiStatus: status,
    ));

    emit(state.copyWith(
      authApiStatus: const AuthStatus.none(),
    ));
  }

  Future<void> loadStaticStatistics() async {
    emit(
      state.copyWith(staticStatistic: null),
    );

    final eitherResult = await botsRepository.fetchStaticStatistics();
    eitherResult.ifRight((value) {
      emit(state.copyWith(
        staticStatistic: value,
      ));
    });
  }

  Future<void> loadStyles() async {
    emit(
      state.copyWith(styleInfo: null),
    );

    final eitherResult = await botsRepository.fetchStyles();
    eitherResult.ifRight((value) {
      emit(state.copyWith(
        styleInfo: value,
      ));
    });
  }

  void enterBackground() {
    isInBackground = true;
  }

  void enterForeground() {
    if (!isInBackground) {
      return;
    }
    isInBackground = false;

    Future.delayed(const Duration(milliseconds: 500), () {
      if (!isClosed) {
        loadData();
      }
    });
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

  Future<void> pauseRunBotAction(BotInfo info) async {
    final isRunning = info.isRunning;
    final AuthStatus status =
        (isRunning ? await botsRepository.stopBot(info.id) : await botsRepository.startBot(info.id))
            .map<Unit>((r) => unit)
            .foldedAuthStatus;

    emit(state.copyWith(
      authApiStatus: status,
    ));

    emit(state.copyWith(
      authApiStatus: const AuthStatus.none(),
    ));
  }

  Future<void> logoutAction() async {
    await authRepository.logout();
  }

  void segmentChanged(StatisticsPeriod value) {
    emit(
      state.copyWith(
        periodFilter: value,
      ),
    );

    loadDynamicStatistics();
    fetchBots();
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
