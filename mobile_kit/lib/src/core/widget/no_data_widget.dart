import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: Container(
                height: 80,
                width: 80,
                color: ColorPalette.grayBackground,
              ),
            ),
            SvgPicture.asset(
              Assets.noDataIcon,
              package: assetsPackage,
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
