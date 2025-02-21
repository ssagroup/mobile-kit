import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_model.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_infrastructure_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'infrastructure_cubit.freezed.dart';
part 'infrastructure_state.dart';

class InfrastructureCubit extends Cubit<InfrastructureState> {
  InfrastructureCubit(
    GetAllInfrastructureUseCase getAllInfrastructureUseCase,
  )   : _getAllInfrastructureUseCase = getAllInfrastructureUseCase,
        super(InfrastructureState.initial());

  final GetAllInfrastructureUseCase _getAllInfrastructureUseCase;

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
        (await _getAllInfrastructureUseCase.invoke()).fold((l) => ApiStatusFailure(), (infrastructure) {
      emit(state.copyWith(
        models: infrastructure.sortedByOrder,
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
