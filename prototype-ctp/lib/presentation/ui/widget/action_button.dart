import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    // required this.isActive,
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  // final bool isActive;
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