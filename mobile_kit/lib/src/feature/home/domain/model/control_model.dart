import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/control_status_enum.dart';

part 'control_model.freezed.dart';

@freezed
class ControlModel  with _$ControlModel {
  const factory ControlModel({
    required int id,
    required String name,
    required ControlStatus status,
    required bool isActionsDisabled,
}) = _ControlModel;

  const ControlModel._();
}

extension ControlsList on List<ControlModel> {
  List<ControlModel> get sortedById {
    return sorted((a, b) => a.id.compareTo(b.id));
  }
}