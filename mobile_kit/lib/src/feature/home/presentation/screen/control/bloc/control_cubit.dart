import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/either_extension.dart';
import 'package:mobile_kit/src/feature/home/domain/model/control_model.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_controls_usecase.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/stop_all_controls_usecase.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/toggle_control_usecase.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'control_cubit.freezed.dart';
part 'control_state.dart';

class ControlCubit extends Cubit<ControlState> {
  ControlCubit(
    GetAllControlsUseCase getAllControlsUseCase,
    ToggleControlUseCase toggleControlUseCase,
    StopAllControlsUseCase stopAllControlsUseCase,
  )   : _getAllControlsUseCase = getAllControlsUseCase,
        _toggleControlUseCase = toggleControlUseCase,
        _stopAllControlsUseCase = stopAllControlsUseCase,
        super(ControlState.initial()) {
    subscriptions.add(_getAllControlsUseCase.controls.listen((controls) {
      _updateControls(controls);
    }));
  }

  final GetAllControlsUseCase _getAllControlsUseCase;
  final StopAllControlsUseCase _stopAllControlsUseCase;
  final ToggleControlUseCase _toggleControlUseCase;
  List<StreamSubscription> subscriptions = [];

  Future<void> initialize() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    await refresh();
    emit(state.copyWith(
      isLoading: false,
    ));
  }

  void _updateControls(List<ControlModel> controls) {
    final activeControls =
    controls.where((element) => element.status == ControlStatus.started && !element.isActionsDisabled);
    emit(state.copyWith(
      controls: controls,
      trigger: !state.trigger,
      isStopAllActive: activeControls.isNotEmpty,
    ));
  }

  Future<void> refresh() async {
    await _getAllControlsUseCase.invoke();
  }

  Future<void> stopAllAction() async {
    final ApiStatus status = (await _stopAllControlsUseCase.invoke()).map<Unit>((r) => unit).foldedApiStatus;
    emit(state.copyWith(
      apiStatus: status,
    ));
    emit(state.copyWith(
      apiStatus: const ApiStatus.none(),
    ));
  }

  Future<void> toggleControlById(ControlModel control) async {
    final isRunning = control.status == ControlStatus.started;
    final ApiStatus status =
        (isRunning ? await _toggleControlUseCase.stop(control.id) : await _toggleControlUseCase.start(control.id))
            .map<Unit>((r) => unit)
            .foldedApiStatus;
    emit(state.copyWith(
      apiStatus: status,
    ));
    emit(state.copyWith(
      apiStatus: const ApiStatus.none(),
    ));
  }

  @override
  Future<void> close() async {
    super.close();

    subscriptions.forEach(
      (element) => element.cancel(),
    );
    subscriptions.clear();
  }
}
