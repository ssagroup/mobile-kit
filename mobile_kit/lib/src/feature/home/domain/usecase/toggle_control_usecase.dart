import 'dart:async';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/core/util/either_extension.dart';
import 'package:mobile_kit/src/feature/home/domain/model/control_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/control_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class ToggleControlUsecase {
  ToggleControlUsecase(
    ControlRepository controlRepository,
  )   : _controlRepository = controlRepository,
        super();

  Future<Either<Failure, void>> start(int id) async {
    return _toggle(id, ControlStatus.started);
  }

  Future<Either<Failure, void>> stop(int id) async {
    return _toggle(id, ControlStatus.stopped);
  }

  Future<Either<Failure, void>> _toggle(int id, ControlStatus status) async {
    final controls = await _controlRepository.controls;
    var control = controls.firstWhereOrNull((element) => element.id == id);
    control = control?.copyWith(isActionsDisabled: true);
    if (control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control);
    }
    _controlRepository.updateControls(controls.sortedById);
    final result = status == ControlStatus.stopped
        ? await _controlRepository.stop(id)
        : await _controlRepository.start(id);
    control = control?.copyWith(isActionsDisabled: false);
    result.ifRight((_) {
      control = control?.copyWith(status: status);
    });
    if (control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control!);
    }
    _controlRepository.updateControls(controls.sortedById);
    return result;
  }

  final ControlRepository _controlRepository;
}
