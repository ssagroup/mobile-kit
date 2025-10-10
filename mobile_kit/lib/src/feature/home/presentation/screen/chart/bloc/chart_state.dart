part of 'chart_cubit.dart';

@freezed
abstract class ChartState with _$ChartState implements ApiStatusState {
  const factory ChartState({
    required bool isLoading,
    required ApiStatus apiStatus,
    required List<double>? x,
    required List<double>? y,
    required String? unit,
  }) = _ChartState;

  factory ChartState.initial() => ChartState(
    isLoading: false,
    apiStatus: ApiStatusNone(),
    x: null,
    y: null,
    unit: '',
  );
}