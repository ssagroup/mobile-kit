import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

enum InfrastructureStatus {
  normal, warning, error, none
}

extension InfrastructureStatusExtension on InfrastructureStatus {

  String get assetName => switch (this) {
    InfrastructureStatus.normal => Assets.normalStatusIcon,
    InfrastructureStatus.warning => Assets.warningStatusIcon,
    InfrastructureStatus.error => Assets.errorStatusIcon,
    InfrastructureStatus.none => Assets.noStatusIcon,
  };

  Color get color => switch (this) {
    InfrastructureStatus.normal => ColorPalette.greenText,
    InfrastructureStatus.warning => ColorPalette.yellowText,
    InfrastructureStatus.error => ColorPalette.redText,
    InfrastructureStatus.none => ColorPalette.grayText,
  };

}