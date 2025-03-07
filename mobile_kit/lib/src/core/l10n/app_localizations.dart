import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Mobile Kit'**
  String get appTitle;

  /// No description provided for @validationPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'*Password is required'**
  String get validationPasswordRequired;

  /// No description provided for @validationEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'*Email is required'**
  String get validationEmailRequired;

  /// No description provided for @validationEmailWrongFormat.
  ///
  /// In en, this message translates to:
  /// **'Email must be in the format \\\'name@domain.com'**
  String get validationEmailWrongFormat;

  /// No description provided for @emailPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Email*'**
  String get emailPlaceholder;

  /// No description provided for @passwordPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Password*'**
  String get passwordPlaceholder;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get loginButton;

  /// No description provided for @logoutButton.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logoutButton;

  /// No description provided for @invalidPinAlert.
  ///
  /// In en, this message translates to:
  /// **'Invalid PIN. Please try again'**
  String get invalidPinAlert;

  /// No description provided for @enterPinTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN'**
  String get enterPinTitle;

  /// No description provided for @verifyPinLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get verifyPinLogout;

  /// No description provided for @logoutAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logoutAlertTitle;

  /// No description provided for @logoutAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutAlertMessage;

  /// No description provided for @stopAllAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Stop All Controls'**
  String get stopAllAlertTitle;

  /// No description provided for @stopAllAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to stop all running controls?'**
  String get stopAllAlertMessage;

  /// No description provided for @stopControlAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Stop this control'**
  String get stopControlAlertTitle;

  /// No description provided for @stopControlAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to stop this control?'**
  String get stopControlAlertMessage;

  /// No description provided for @setupPinAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Enabling biometrical authentication'**
  String get setupPinAlertTitle;

  /// No description provided for @setupPinAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Do you want to enable biometrical authentication for SSA Mobile Kit?'**
  String get setupPinAlertMessage;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @alertsTitle.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get alertsTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @controlTitle.
  ///
  /// In en, this message translates to:
  /// **'Control'**
  String get controlTitle;

  /// No description provided for @kpisTitle.
  ///
  /// In en, this message translates to:
  /// **'KPIs'**
  String get kpisTitle;

  /// No description provided for @infrastructureTitle.
  ///
  /// In en, this message translates to:
  /// **'Infrastructure'**
  String get infrastructureTitle;

  /// No description provided for @stopAllTitle.
  ///
  /// In en, this message translates to:
  /// **'Stop All'**
  String get stopAllTitle;

  /// No description provided for @yesTitle.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesTitle;

  /// No description provided for @noTitle.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noTitle;

  /// No description provided for @noDataTitle.
  ///
  /// In en, this message translates to:
  /// **'No data available'**
  String get noDataTitle;

  /// No description provided for @currentTitle.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get currentTitle;

  /// No description provided for @oneHourTitle.
  ///
  /// In en, this message translates to:
  /// **'1 h'**
  String get oneHourTitle;

  /// No description provided for @threeHoursTitle.
  ///
  /// In en, this message translates to:
  /// **'3 h'**
  String get threeHoursTitle;

  /// No description provided for @sixHoursTitle.
  ///
  /// In en, this message translates to:
  /// **'6 h'**
  String get sixHoursTitle;

  /// No description provided for @twelveHoursTitle.
  ///
  /// In en, this message translates to:
  /// **'12 h'**
  String get twelveHoursTitle;

  /// No description provided for @dayTitle.
  ///
  /// In en, this message translates to:
  /// **'24 h'**
  String get dayTitle;

  /// No description provided for @weekTitle.
  ///
  /// In en, this message translates to:
  /// **'7 d'**
  String get weekTitle;

  /// No description provided for @monthTitle.
  ///
  /// In en, this message translates to:
  /// **'30 d'**
  String get monthTitle;

  /// No description provided for @yearTitle.
  ///
  /// In en, this message translates to:
  /// **'1 y'**
  String get yearTitle;

  /// No description provided for @errorLoadingData.
  ///
  /// In en, this message translates to:
  /// **'Error loading data!'**
  String get errorLoadingData;

  /// No description provided for @noNotificationTitle.
  ///
  /// In en, this message translates to:
  /// **'You have no notifications yet'**
  String get noNotificationTitle;

  /// No description provided for @inDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}} ago'**
  String inDays(num count);

  /// No description provided for @inHours.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour} other{{count} hours}} ago'**
  String inHours(num count);

  /// No description provided for @inMinutes.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute} other{{count} minutes}} ago'**
  String inMinutes(num count);

  /// No description provided for @inSeconds.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 second} other{{count} seconds}} ago'**
  String inSeconds(num count);

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get justNow;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
