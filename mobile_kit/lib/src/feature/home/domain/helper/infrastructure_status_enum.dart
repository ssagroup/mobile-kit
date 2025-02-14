import 'package:mobile_kit/src/core/resources/assets.dart';

enum InfrastructureStatus {
  normal, warning, error,
}

extension InfrastructureStatusExtension on InfrastructureStatus {
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
}