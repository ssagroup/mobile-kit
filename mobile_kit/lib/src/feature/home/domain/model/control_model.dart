import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:collection/collection.dart';

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

enum ControlStatus {
  started, stopped, undefined
}

extension ControlStatusExtension on ControlStatus {
  static ControlStatus init(String status) {
    switch (status) {
      case 'Started': return ControlStatus.started;
      case 'Stopped': return ControlStatus.stopped;
    }
    return ControlStatus.undefined;
  }

  Color get descriptionColor {
    switch (this) {
      case ControlStatus.started:
        return ColorPalette.greenText;
      case ControlStatus.stopped:
        return ColorPalette.redText;
      case ControlStatus.undefined:
        throw 'Unsupported status';
    }
  }

  String get assetName {
    switch (this) {
      case ControlStatus.started:
        return Assets.pauseBotIcon;
      case ControlStatus.stopped:
        return Assets.runBotIcon;
      case ControlStatus.undefined:
        throw 'Unsupported status';
    }
  }

}