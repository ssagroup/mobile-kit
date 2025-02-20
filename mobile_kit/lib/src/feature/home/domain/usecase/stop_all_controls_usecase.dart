import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/core/util/either_extension.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/control_status_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/control_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class StopAllControlsUseCase {
  StopAllControlsUseCase(
    ControlRepository controlRepository,
  ) : _controlRepository = controlRepository;

  /// Stop All Controls
  Future<Either<Failure, void>> invoke() async {
    var controls = _controlRepository.controls;
    controls = controls.map((element) {
      if (element.status == ControlStatus.started) {
        return element.copyWith(isActionsDisabled: true);
      } else {
        return element;
      }
    }).toList();

    _controlRepository.updateControls(controls.sortedByOrder);

    final result = await _controlRepository.stopAll();

    controls = controls.map((element) {
      return element.copyWith(isActionsDisabled: false);
    }).toList();

    result.ifRight((_) {
      controls = controls.map((element) {
        return element.copyWith(status: ControlStatus.stopped);
      }).toList();
    });
    _controlRepository.updateControls(controls.sortedByOrder);
    return result;
  }

  final ControlRepository _controlRepository;
}
