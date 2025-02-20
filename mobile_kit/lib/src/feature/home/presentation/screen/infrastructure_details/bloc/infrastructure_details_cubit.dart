import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_details_model.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_infrastructure_details_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'infrastructure_details_state.dart';
part 'infrastructure_details_cubit.freezed.dart';

class InfrastructureDetailsCubit extends Cubit<InfrastructureDetailsState> {
  InfrastructureDetailsCubit(
      GetInfrastructureDetailsUseCase getInfrastructureUseCase,
      )   : _getInfrastructureUseCase = getInfrastructureUseCase,
        super(InfrastructureDetailsState.initial());

  final GetInfrastructureDetailsUseCase _getInfrastructureUseCase;

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
    final ApiStatus status = (await _getInfrastructureUseCase.getDetails(state.periodFilter)).fold((l) => ApiStatusFailure(), (models) {
      emit(state.copyWith(
        models: models.sortedByOrder,
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
