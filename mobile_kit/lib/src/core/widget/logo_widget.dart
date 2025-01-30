import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.ssaLogoSmall,
      package: assetsPackage,
    );
  }
}
