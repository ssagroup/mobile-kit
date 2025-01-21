import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';

Future<void> showAdaptiveAlertDialog(
    BuildContext context,
    String? title,
    String? message,
    ) {
  return showOkAlertDialog(
    context: context,
    title: title,
    message: message,
  );
}

Future<bool> showDialogWithCancel({
  required BuildContext context,
  required String? title,
  required String? message,
  required bool isDestructive,
}) async {
  final OkCancelResult result = await showOkCancelAlertDialog(
    context: context,
    title: title,
    message: message,
    isDestructiveAction: isDestructive,
  );
  return result == OkCancelResult.ok;
}

Future<bool> showYesNoDialog({
  required BuildContext context,
  required String? title,
  required String? message,
}) async {
  final OkCancelResult result = await showOkCancelAlertDialog(
    context: context,
    title: title,
    message: message,
    okLabel: 'Yes',
    cancelLabel: 'No',
  );
  return result == OkCancelResult.ok;
}

Future<void> showConfirmationAlert(
    BuildContext context,
    String? title,
    String? message,
    bool isDestructive,
    Function() action,
    ) async {
  final result = await showDialogWithCancel(
    context: context,
    title: title,
    message: message,
    isDestructive: isDestructive,
  );
  if (result == true) {
    action();
  }
}

Future<bool> showConfirmationAlertFuture(
    BuildContext context,
    String? title,
    String? message,
    bool isDestructive,
    ) async {
  final result = await showDialogWithCancel(
    context: context,
    title: title,
    message: message,
    isDestructive: isDestructive,
  );
  return result;
}
