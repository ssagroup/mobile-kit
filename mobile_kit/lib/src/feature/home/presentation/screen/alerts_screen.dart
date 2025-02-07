import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/widget/app_bar_with_logo_widget.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithLogoWidget(
        title: Text(
          AppLocalizations.of(context)!.alertsTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}