part of 'infrastructure_cubit.dart';

@freezed
class InfrastructureState with _$InfrastructureState implements ApiStatusState {
  const factory InfrastructureState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<InfrastructureModel> models,
  }) = _InfrastructureState;

  factory InfrastructureState.initial() => InfrastructureState(
    isLoading: false,
    apiStatus: ApiStatusNone(),
    models: [],
  );
}