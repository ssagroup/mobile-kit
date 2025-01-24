import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get validationPasswordRequired => '*Password is required';

  @override
  String get validationEmailRequired => '*Email is required';

  @override
  String get validationEmailWrongFormat => 'Email must be in the format \\\'name@domain.com';

  @override
  String get emailPlaceholder => 'Email*';

  @override
  String get passwordPlaceholder => 'Password*';

  @override
  String get loginButton => 'Log In';

  @override
  String get setupPinAlertTitle => 'Enabling biometrical authentication';

  @override
  String get setupPinAlertMessage => 'Do you want to enable biometrical authentication for SSA Mobile Kit?';

  @override
  String get invalidPinAlert => 'Invalid PIN. Please try again';

  @override
  String get enterPinTitle => 'Enter PIN';

  @override
  String get verifyPinLogout => 'Logout';

  @override
  String get logoutAlertTitle => 'Logout';

  @override
  String get logoutAlertMessage => 'Are you sure you want to logout?';

  @override
  String get homeTitle => 'Home';

  @override
  String get alertsTitle => 'Alerts';

  @override
  String get appTitle => 'Mobile Kit';

  @override
  String get yesTitle => 'Yes';

  @override
  String get noTitle => 'No';
}
