import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

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

  static ControlStatus create(bool isRunning) {
    return isRunning ? ControlStatus.started : ControlStatus.stopped;
  }

  String get assetName => switch (this) {
    ControlStatus.started => Assets.pauseBotIcon,
    ControlStatus.stopped => Assets.runBotIcon,
    ControlStatus.undefined => throw 'Unsupported status',
  };

  Color get descriptionColor => switch (this) {
    ControlStatus.started => ColorPalette.greenText,
    ControlStatus.stopped => ColorPalette.redText,
    ControlStatus.undefined => throw 'Unsupported status',
  };

}