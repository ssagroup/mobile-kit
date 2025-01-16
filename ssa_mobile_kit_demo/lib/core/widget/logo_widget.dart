import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit_demo/core/resources/assets.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SvgPicture.asset(
        Assets.ssaLogoSmall,
      ),
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     SvgPicture.asset(
    //       Assets.ssaLogoSmall,
    //       // height: 10,
    //       // width: 30,
    //     ),
    //     const Text(
    //       'Mobile Kit',
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         fontSize: 11,
    //         color: Colors.black
    //       ),
    //     ),
    //   ],
    // );
  }
}
