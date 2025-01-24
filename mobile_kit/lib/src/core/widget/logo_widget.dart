import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          Assets.ssaLogoBig,
          package: 'mobile_kit',
          height: 10,
          width: 30,
        ),
        Text(AppLocalizations.of(context)!.appTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.black
          ),
        ),
      ],
    );
  }
}
