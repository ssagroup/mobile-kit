import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

abstract class ApiStatusState {
  ApiStatus get apiStatus;
}

void showFailure(BuildContext context, ApiStatusState state) {
  switch (state.apiStatus) {
    case ApiStatusFailure(message: final messsage):
      final snackBar = SnackBar(
        content: Text(
          messsage ?? AppLocalizations.of(context)!.errorLoadingData,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
    default: break;
  }
}