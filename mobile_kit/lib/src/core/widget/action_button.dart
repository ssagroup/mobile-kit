import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.title,
    this.decoration,
    this.onPressed,
    this.textStyle,
    super.key,
  });

  final String title;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45,
        decoration: decoration,
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Center(
            child: Text(
              title,
              style: textStyle ?? TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
        if (onPressed != null) {
          onPressed!();
        }
      },
    );
  }
}
