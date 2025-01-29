import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';

class ControlWidget extends StatelessWidget {
  const ControlWidget({
    super.key,
    required this.assetName,
    required this.itemTitle,
    required this.itemDescription,
    required this.onPressed,
  });

  final String assetName;
  final String itemTitle;
  final String itemDescription;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(itemTitle),
            const SizedBox(height: 8),
            Text(itemDescription),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () => onPressed(),
          icon: SvgPicture.asset(
            assetName,
            package: assetsPackage,
          ),
        ),
      ],
    );
  }
}
