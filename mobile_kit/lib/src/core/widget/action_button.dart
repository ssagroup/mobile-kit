import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45,
        decoration: GradientBoxDecoration.authButtonGradient,
        clipBehavior: Clip.hardEdge,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
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
