import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
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
    final ApiStatus status =
        (await _getAllKpisUseCase.getAll(state.periodFilter)).fold((l) => ApiStatusFailure(), (kpis) {
      emit(state.copyWith(
        models: kpis.sortedByOrder,
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

  Future<void> segmentChanged(StatisticsPeriod value) async {
    emit(
      state.copyWith(
        periodFilter: value,
        models: [],
        isLoading: true,
      ),
    );
    await refresh();
    emit(state.copyWith(
      isLoading: false,
    ));
  }
}
