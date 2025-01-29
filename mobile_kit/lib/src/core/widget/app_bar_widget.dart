import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
import 'package:mobile_kit/src/core/widget/logo_widget.dart';

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
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: const AppLogoWidget(),
        ),
        title: title,
        backgroundColor: ColorPalette.greyBackground,
        actions: actions,
        leadingWidth: 116,
        flexibleSpace: Container(
          decoration: GradientBoxDecoration.backgroundBarGradient,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}