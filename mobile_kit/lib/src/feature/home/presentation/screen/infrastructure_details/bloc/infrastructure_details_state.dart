part of 'infrastructure_details_cubit.dart';

@freezed
class InfrastructureDetailsState with _$InfrastructureDetailsState {
  const factory InfrastructureDetailsState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required StatisticsPeriod periodFilter,
    required List<InfrastructureDetailsModel> models,
  }) = _InfrastructureDetailsState;

  factory InfrastructureDetailsState.initial() => InfrastructureDetailsState(
    isLoading: false,
    apiStatus: ApiStatus.none(),
    periodFilter: StatisticsPeriod.current,
    models: [],
  );
}