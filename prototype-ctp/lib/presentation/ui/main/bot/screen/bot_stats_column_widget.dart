import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

const String _fontFamilyName = 'Manrope';

class BotStatsColumnWidget extends StatelessWidget {
  const BotStatsColumnWidget({
    required this.firstLineWidget,
    this.secondLineWidget,
    this.thirdLineWidget,
    required this.parameterName,
    required this.showClockIcon,
    Key? key,
  }) : super(key: key);

  final Widget firstLineWidget;
  final Widget? secondLineWidget;
  final Widget? thirdLineWidget;
  final String parameterName;
  final bool showClockIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              if (showClockIcon)
                const WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.0),
                    child: Icon(
                      Icons.access_time,
                      size: 13,
                      color: ColorPalette.grayFont,
                    ),
                  ),
                ),
              TextSpan(
                text: parameterName,
              ),
            ],
            style: const TextStyle(
              color: ColorPalette.grayFont,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: _fontFamilyName,
            ),
          ),
        ),
        firstLineWidget,
        if (secondLineWidget != null)
          secondLineWidget!,
        if (thirdLineWidget != null)
          thirdLineWidget!,
      ],
    );
  }
}
