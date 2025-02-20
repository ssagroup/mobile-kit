import 'package:dartz/dartz.dart';
import 'package:mobile_kit/src/core/util/either_extension.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/model/control_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/control_repository.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

class GetAllControlsUseCase {
  GetAllControlsUseCase(
    ControlRepository controlRepository,
  ) : _controlRepository = controlRepository;

  /// Get All Controls
  Future<Either<Failure, void>> invoke() async {
    final result = await _controlRepository.getAll();
    result.ifRight((controls) {
      _controlRepository.updateControls(controls.sortedByOrder);
    });
    return result;
  }

  final ControlRepository _controlRepository;
  Stream<List<ControlModel>> get controls => _controlRepository.controlsStream;
}
