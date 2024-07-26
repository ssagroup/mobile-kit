import 'package:flutter/material.dart';

class BadgeWrapper extends StatelessWidget {
  final Widget widget;
  final int badgeValue;

  const BadgeWrapper({required this.widget, required this.badgeValue, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (badgeValue > 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          widget,
          Positioned(
              top: 5,
              right: 5,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
                child: Container(
                  decoration: const ShapeDecoration(shape: StadiumBorder(), color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: Text(
                        badgeValue.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      );
    } else {
      return widget;
    }
  }
}