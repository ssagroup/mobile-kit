part of 'kpis_cubit.dart';

@freezed
abstract class KpisState with _$KpisState implements ApiStatusState {
  const factory KpisState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required StatisticsPeriod periodFilter,
    required List<KpiModel> models,
  }) = _KpisState;

  factory KpisState.initial() => KpisState(
    isLoading: false,
    apiStatus: ApiStatusNone(),
    periodFilter: StatisticsPeriod.day,
    models: [],
  );
}