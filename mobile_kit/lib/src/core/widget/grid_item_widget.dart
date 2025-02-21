import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.itemValue,
    required this.itemTitle,
    this.unit,
    this.isUp,
    this.showChart,
    this.textColor,
  });

  final String itemTitle;
  final String itemValue;
  final String? unit;
  final bool? isUp;
  final bool? showChart;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  itemValue,
                  style: TextStyle(
                    color: textColor ?? Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                if (unit != null) ...[
                  const SizedBox(width: 4),
                  Text(
                    unit!,
                    style: TextStyle(
                      color: textColor ?? Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
                if (isUp != null) ...[
                  const SizedBox(width: 4),
                  Icon(
                    isUp! ? Icons.arrow_upward : Icons.arrow_downward,
                    color: isUp! ? ColorPalette.greenText : ColorPalette.redText,
                    size: 14,
                  ),
                ]
              ],
            ),
            const SizedBox(height: 2),
            Text(
              itemTitle,
              style: TextStyle(
                color: ColorPalette.grayText,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
        if (showChart == true) ...[
          const Spacer(),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black26, offset: Offset(3.0, 6.0), blurRadius: 12.0),
              ],
            ),
            child: SvgPicture.asset(
              Assets.chartIcon,
              width: 16,
              height: 16,
              package: assetsPackage,
            ),
          ),
        ],
      ],
    );
  }
}
