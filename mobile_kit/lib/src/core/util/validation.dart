import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/util/optional.dart';

ValidationError? validatePassword(String? value) {
  return value?.isNotEmpty == true ? null : ValidationError.passwordRequired;
}

ValidationError? validateEmail(String? value, {bool optional = false}) {
  if (optional && value.orEmpty.isEmpty) {
    return null;
  }
  const pattern = r'[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}';
  final RegExp regExp = RegExp(pattern);
  if (value?.isEmpty == true) {
    return ValidationError.emilRequired;
  } else if (!regExp.hasMatch(value!)) {
    return ValidationError.emailWrongFormat;
  }
  return null;
}

enum ValidationError {
  passwordRequired, emilRequired, emailWrongFormat
}

extension ValidationErrorExtension on ValidationError {
  String errorDescription(BuildContext context) {
    switch (this) {
      case ValidationError.passwordRequired:
        return AppLocalizations.of(context)!.validationPasswordRequired;
      case ValidationError.emilRequired:
        return AppLocalizations.of(context)!.validationEmailRequired;
      case ValidationError.emailWrongFormat:
        return AppLocalizations.of(context)!.validationEmailWrongFormat;
    }
  }
}