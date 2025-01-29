import 'package:flutter/material.dart';
import 'package:mobile_kit/mobile_kit.dart';

class IconActionButton extends StatelessWidget {
  const IconActionButton({
    required this.icon,
    Color? color,
    required this.onPressed,
    super.key,
  }) : this.color = color ?? Colors.black;

  final Widget icon;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final isOk = await showDialogWithCancel(
            context: context,
            title: AppLocalizations.of(context)!.logoutAlertTitle,
            message: AppLocalizations.of(context)!.logoutAlertMessage,
            isDestructive: true);
        if (isOk) {
          onPressed();
        }
      },
      icon: icon,
      color: color
    );
  }
}