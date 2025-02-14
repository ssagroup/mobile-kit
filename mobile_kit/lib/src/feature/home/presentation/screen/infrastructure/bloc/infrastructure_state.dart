part of 'infrastructure_cubit.dart';

@freezed
class InfrastructureState with _$InfrastructureState {
  const factory InfrastructureState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<InfrastructureModel> infrastructure,
  }) = _InfrastructureState;

  factory InfrastructureState.initial() => const InfrastructureState(
    isLoading: false,
    apiStatus: ApiStatus.none(),
    infrastructure: [],
  );
}