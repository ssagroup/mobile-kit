import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/logo_widget.dart';

class AppBarWithLogoWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithLogoWidget({
    Key? key,
    this.title,
    this.actions,
  }) : super(key: key);

  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: const AppLogoWidget(),
        ),
        title: title,
        backgroundColor: ColorPalette.grayBackground,
        actions: actions,
        leadingWidth: 37+16,
        shadowColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}