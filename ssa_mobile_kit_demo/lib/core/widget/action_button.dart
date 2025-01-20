import 'package:flutter/material.dart';
import 'package:mobile_kit_demo/core/resources/colors.dart';

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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(45),
        backgroundColor: ColorPalette.bluishAction,
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        onPressed();
      },
      child: Text(title),
    );
  }
}