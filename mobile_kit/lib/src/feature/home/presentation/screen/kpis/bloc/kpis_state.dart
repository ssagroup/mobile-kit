part of 'kpis_cubit.dart';

@freezed
class KpisState with _$KpisState {
  const factory KpisState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required StatisticsPeriod periodFilter,
  }) = _KpisState;

  factory KpisState.initial() => const KpisState(
    isLoading: false,
    apiStatus: ApiStatus.none(),
    periodFilter: StatisticsPeriod.day
  );
}