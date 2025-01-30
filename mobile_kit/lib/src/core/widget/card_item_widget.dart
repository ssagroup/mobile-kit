import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.assetName,
    required this.itemTitle,
    required this.index,
  });

  final String assetName;
  final String itemTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assetName,
          width: 20,
          height: 20,
          color: ColorPalette.grayIcon,
          package: assetsPackage,
        ),
        const SizedBox(width: 24),
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
