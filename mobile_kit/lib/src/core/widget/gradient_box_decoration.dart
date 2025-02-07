import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';

class GradientBoxDecoration extends BoxDecoration {

  static BoxDecoration get backgroundBarGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        stops: [0.58, 1],
        colors: <Color>[
          Color(0xffE9EAEC),
          Color(0xffF0F1F4),
        ],
        tileMode: TileMode.clamp,
      ),
    );
  }

  static BoxDecoration backgroundBottomBarGradient(bool isSelected) {
    return BoxDecoration(
      color: isSelected ? Colors.white : ColorPalette.grayBackground,
      borderRadius: BorderRadius.circular(16.0),
    );
  }

  static BoxDecoration get backgroundCardGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        stops: [0, 0.58, 1],
        colors: <Color>[
          Color(0xffF7F8FA),
          Color(0xffECEDEF),
          Color(0xffF6F7F9),
        ],
        tileMode: TileMode.clamp,
      ),
    );
  }

  static BoxDecoration get authButtonGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xff4178E1),
          Color(0xff7599DE),
        ],
        tileMode: TileMode.clamp,
      ),
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );
  }

  static BoxDecoration get warningOrangeGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xffED995D),
          Color(0xffEDBA5D),
        ],
        tileMode: TileMode.clamp,
      ),
    );
  }

  static BoxDecoration get dangerRedGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xffF0816B),
          Color(0xffF99990),
        ],
        tileMode: TileMode.clamp,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );
  }

  static BoxDecoration get inactiveGrayGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xffCCCDD2),
          Color(0xffE1E4EA),
        ],
        tileMode: TileMode.clamp,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );
  }

  static BoxDecoration get successGreenGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xff52C587),
          Color(0xff89D996),
        ],
        tileMode: TileMode.clamp,
      ),
    );
  }
}
