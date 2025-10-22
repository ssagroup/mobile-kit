import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.itemValue,
    required this.itemTitle,
    this.assetName,
    this.unit,
    this.isUp,
    this.showChart,
    this.textColor,
    this.iconColor,
    this.iconSize,
  });

  final String itemTitle;
  final String itemValue;
  final String? unit;
  final bool? isUp;
  final bool? showChart;
  final Color? textColor;
  final String? assetName;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (assetName != null) ...[
                    SvgPicture.asset(
                      assetName!,
                      width: iconSize,
                      height: iconSize,
                      color: iconColor,
                      package: assetsPackage,
                    ),
                    const SizedBox(width: 4),
                  ],
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        itemValue,
                        style: TextStyle(
                          color: textColor ?? Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  if (unit != null) ...[
                    const SizedBox(width: 4),
                    Text(
                      unit!,
                      style: TextStyle(color: textColor ?? Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                  if (isUp != null) ...[
                    const SizedBox(width: 4),
                    Icon(
                      isUp! ? Icons.arrow_upward : Icons.arrow_downward,
                      color: isUp! ? ColorPalette.greenText : ColorPalette.redText,
                      size: 14,
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 2),
              Expanded(
                child: Text(
                  itemTitle,
                  style: TextStyle(
                    color: ColorPalette.grayText,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        if (showChart == true) ...[
          const SizedBox(width: 2),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(3.0, 6.0), blurRadius: 12.0)],
            ),
            child: SvgPicture.asset(Assets.chartIcon, width: 16, height: 16, package: assetsPackage),
          ),
        ],
      ],
    );
  }
}
