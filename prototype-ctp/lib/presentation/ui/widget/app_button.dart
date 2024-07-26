import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.isActive,
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final bool isActive;
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
        isActive ? ColorPalette.pinkBackground : ColorPalette.greyControl,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }

}