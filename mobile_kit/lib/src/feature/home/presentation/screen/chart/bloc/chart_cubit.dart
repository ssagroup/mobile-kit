import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_chart_info_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'chart_cubit.freezed.dart';
part 'chart_state.dart';

class ChartCubit extends Cubit<ChartState> {
  ChartCubit(
      GetChartInfoUseCase getChartInfoUseCase,
      )   : _getChartInfoUseCase = getChartInfoUseCase,
        super(ChartState.initial());

  final GetChartInfoUseCase _getChartInfoUseCase;

  Future<void> initialize() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    await refresh();
    emit(state.copyWith(
      isLoading: false,
    ));
  }

  Future<void> refresh() async {
    final ApiStatus status =
    (await _getChartInfoUseCase.invoke()).fold((l) => ApiStatusFailure(), (chart) {
      // final xPoints = chart?.points?.x.sorted((a, b) => a.compareTo(b));
      emit(state.copyWith(
        x: chart?.points?.x,
        y: chart?.points?.y,
        unit: chart?.unit
      ));
      return ApiStatusSuccess();
    });
    emit(state.copyWith(
      apiStatus: status,
    ));
    emit(state.copyWith(
      apiStatus: ApiStatusNone(),
    ));
  }

}
