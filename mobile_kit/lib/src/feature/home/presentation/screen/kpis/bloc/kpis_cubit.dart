import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/kpi_model.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_kpis_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'kpis_cubit.freezed.dart';
part 'kpis_state.dart';

class KpisCubit extends Cubit<KpisState> {
  KpisCubit(
    GetAllKpisUseCase getAllKpisUseCase,
  )   : _getAllKpisUseCase = getAllKpisUseCase,
        super(KpisState.initial());

  final GetAllKpisUseCase _getAllKpisUseCase;

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
    final ApiStatus status = (await _getAllKpisUseCase.getAll(state.periodFilter)).fold((l) => const ApiStatus.failure(''), (kpis) {
      emit(state.copyWith(
        kpis: kpis.sortedByOrder,
      ));
      return ApiStatus.success();
    });
    emit(state.copyWith(
      apiStatus: status,
    ));
    emit(state.copyWith(
      apiStatus: const ApiStatus.none(),
    ));
  }

  Future<void> segmentChanged(StatisticsPeriod value) async {
    emit(
      state.copyWith(
        periodFilter: value,
        kpis: [],
        isLoading: true,
      ),
    );
    await refresh();
    emit(state.copyWith(
      isLoading: false,
    ));
  }
}