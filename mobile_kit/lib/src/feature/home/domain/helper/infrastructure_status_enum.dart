import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

enum InfrastructureStatus {
  normal, warning, error,
}

extension InfrastructureStatusExtension on InfrastructureStatus {

  static InfrastructureStatus init(String status) {
    switch (status) {
      case 'Normal': return InfrastructureStatus.normal;
      case 'Warning': return InfrastructureStatus.warning;
      case 'Error': return InfrastructureStatus.error;
    }
    throw 'Undefined type';
  }

  String get assetName {
    switch (this) {
      case InfrastructureStatus.normal:
        return Assets.normalStatusIcon;
      case InfrastructureStatus.warning:
        return Assets.warningStatusIcon;
      case InfrastructureStatus.error:
        return Assets.errorStatusIcon;
    }
  }

  Color get color {
    switch (this) {
      case InfrastructureStatus.normal:
        return ColorPalette.greenText;
      case InfrastructureStatus.warning:
        return ColorPalette.yellowText;
      case InfrastructureStatus.error:
        return ColorPalette.redText;
    }
  }
}