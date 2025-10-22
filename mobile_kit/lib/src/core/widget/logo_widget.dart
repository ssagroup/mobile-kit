import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/widget/app_logo_provider.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetIt.instance<AppLogoProvider>().appLogo();
    // return SvgPicture.asset(
    //   Assets.ssaLogoSmall,
    //   package: assetsPackage,
    // );
  }
}
