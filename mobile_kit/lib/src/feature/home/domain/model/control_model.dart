import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/control_status_enum.dart';

part 'control_model.freezed.dart';

@freezed
class ControlModel  with _$ControlModel implements Sortable {
  const factory ControlModel({
    required int id,
    required String name,
    required ControlStatus status,
    required bool isActionsDisabled,
}) = _ControlModel;

  @override int get order => id;

  const ControlModel._();
}
