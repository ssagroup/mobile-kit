// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Mobile Kit';

  @override
  String get validationPasswordRequired => '*Password is required';

  @override
  String get validationEmailRequired => '*Email is required';

  @override
  String get validationEmailWrongFormat =>
      'Email must be in the format \\\'name@domain.com';

  @override
  String get emailPlaceholder => 'Email*';

  @override
  String get passwordPlaceholder => 'Password*';

  @override
  String get loginButton => 'Log In';

  @override
  String get logoutButton => 'Log Out';

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
  String get stopAllAlertTitle => 'Stop All Controls';

  @override
  String get stopAllAlertMessage =>
      'Are you sure you want to stop all running controls?';

  @override
  String get stopControlAlertTitle => 'Stop this control';

  @override
  String get stopControlAlertMessage =>
      'Are you sure you want to stop this control?';

  @override
  String get setupPinAlertTitle => 'Enabling biometrical authentication';

  @override
  String get setupPinAlertMessage =>
      'Do you want to enable biometrical authentication for SSA Mobile Kit?';

  @override
  String get homeTitle => 'Home';

  @override
  String get alertsTitle => 'Alerts';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get controlTitle => 'Control';

  @override
  String get kpisTitle => 'KPIs';

  @override
  String get infrastructureTitle => 'Infrastructure';

  @override
  String get stopAllTitle => 'Stop All';

  @override
  String get yesTitle => 'Yes';

  @override
  String get noTitle => 'No';

  @override
  String get noDataTitle => 'No data available';

  @override
  String get currentTitle => 'Current';

  @override
  String get oneHourTitle => '1 h';

  @override
  String get threeHoursTitle => '3 h';

  @override
  String get sixHoursTitle => '6 h';

  @override
  String get twelveHoursTitle => '12 h';

  @override
  String get dayTitle => '24 h';

  @override
  String get weekTitle => '7 d';

  @override
  String get monthTitle => '30 d';

  @override
  String get yearTitle => '1 y';

  @override
  String get errorLoadingData => 'Error loading data!';

  @override
  String get noNotificationTitle => 'You have no notifications yet';

  @override
  String inDays(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0 ago';
  }

  @override
  String inHours(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours',
      one: '1 hour',
    );
    return '$_temp0 ago';
  }

  @override
  String inMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return '$_temp0 ago';
  }

  @override
  String inSeconds(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds',
      one: '1 second',
    );
    return '$_temp0 ago';
  }

  @override
  String get justNow => 'just now';
}
