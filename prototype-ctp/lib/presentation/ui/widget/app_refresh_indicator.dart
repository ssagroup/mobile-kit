import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

class AppRefreshIndicator extends RefreshIndicator {
  const AppRefreshIndicator({required RefreshCallback onRefresh, required Widget child, Key? key})
      : super(
      color: ColorPalette.grayFont,
      // backgroundColor: ColorPalette.actionTranslucent,
      onRefresh: onRefresh,
      child: child,
      key: key);
}