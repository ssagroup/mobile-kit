import 'package:ctp_mobile/presentation/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.ssaLogoSmall,
      height: 48,
      width: 55,
    );
  }
}