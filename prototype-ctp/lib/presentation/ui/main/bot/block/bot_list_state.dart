import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:ctp_mobile/domain/entity/api_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_list_state.freezed.dart';

@freezed
class BotListState with _$BotListState {
  const factory BotListState({
    required bool isLoading,
    required List<BotInfo> bots,
    required int notificationBadge,
    required StatisticsPeriod periodFilter,
    StaticStatisticsInfo? staticStatistic,
    DynamicStatisticsInfo? dynamicStatistic,
    StyleInfo? styleInfo,
    required AuthStatus authApiStatus,
    required bool trigger,
    required bool isStopActive,
    required int activeBotCount,
  }) = _BotListState;

  factory BotListState.initial() => const BotListState(
        isLoading: false,
        bots: [],
        notificationBadge: 0,
        periodFilter: StatisticsPeriod.day,
        authApiStatus: AuthStatus.none(),
        trigger: false,
        isStopActive: false,
        activeBotCount: 0,
      );
}
