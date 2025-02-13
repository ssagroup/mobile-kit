import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.assetName,
    required this.itemTitle,
  });

  final String assetName;
  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assetName,
          width: 24,
          height: 24,
          color: ColorPalette.grayIcon,
          package: assetsPackage,
        ),
        const SizedBox(width: 16),
        Text(
          itemTitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: ColorPalette.grayText,
        ),
      ],
    );
  }
}
