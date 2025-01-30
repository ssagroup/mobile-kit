import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          AppLocalizations.of(context)!.alertsTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}