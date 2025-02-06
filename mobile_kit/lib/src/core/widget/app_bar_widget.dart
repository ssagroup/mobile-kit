import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    this.title,
    this.actions,
    this.elevation = 2.0,
  }) : super(key: key);

  final Widget? title;
  final double elevation;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: AppBar(
        title: title,
        centerTitle: false,
        backgroundColor: ColorPalette.grayBackground,
        foregroundColor: Colors.black,
        actions: actions,
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}