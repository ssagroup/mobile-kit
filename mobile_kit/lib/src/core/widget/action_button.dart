import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.title,
    required this.onPressed,
    this.decoration,
    super.key,
  });

  final String title;
  final Decoration? decoration;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45,
        decoration: decoration,
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
        onPressed();
      },
    );
  }
}
