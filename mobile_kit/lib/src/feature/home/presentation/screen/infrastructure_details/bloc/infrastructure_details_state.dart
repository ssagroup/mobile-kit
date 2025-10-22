part of 'infrastructure_details_cubit.dart';

@freezed
abstract class InfrastructureDetailsState with _$InfrastructureDetailsState implements ApiStatusState {
  const factory InfrastructureDetailsState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required StatisticsPeriod periodFilter,
    required List<InfrastructureDetailsModel> models,
  }) = _InfrastructureDetailsState;

  factory InfrastructureDetailsState.initial() => InfrastructureDetailsState(
    isLoading: false,
    apiStatus: ApiStatusNone(),
    periodFilter: StatisticsPeriod.one_hour,
    models: [],
  );
}