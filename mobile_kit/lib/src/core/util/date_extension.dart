import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';

extension DateExtension on DateTime {

  String convertToAgo(BuildContext context) {

    final diff = DateTime.now().difference(this.toLocal());

    if (diff.inDays >= 1) {
      return AppLocalizations.of(context)!.inDays(diff.inDays);
    } else if (diff.inHours >= 1) {
      return AppLocalizations.of(context)!.inHours(diff.inHours);
    } else if (diff.inMinutes >= 1) {
      return  AppLocalizations.of(context)!.inMinutes(diff.inMinutes);
    } else if (diff.inSeconds >= 1) {
      return AppLocalizations.of(context)!.inSeconds(diff.inSeconds);
    } else {
      return AppLocalizations.of(context)!.justNow;
    }
  }
}