// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Yes`
  String get common_yes {
    return Intl.message(
      'Yes',
      name: 'common_yes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Invalid API key`
  String get weather_err_invalid_api {
    return Intl.message(
      'Invalid API key',
      name: 'weather_err_invalid_api',
      desc: '',
      args: [],
    );
  }

  /// `City not found`
  String get weather_err_city_not_found {
    return Intl.message(
      'City not found',
      name: 'weather_err_city_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Weather service: Unknown error`
  String get weather_err_unknown {
    return Intl.message(
      'Weather service: Unknown error',
      name: 'weather_err_unknown',
      desc: '',
      args: [],
    );
  }

  /// `H`
  String get weather_temp_high {
    return Intl.message(
      'H',
      name: 'weather_temp_high',
      desc: '',
      args: [],
    );
  }

  /// `L`
  String get weather_temp_low {
    return Intl.message(
      'L',
      name: 'weather_temp_low',
      desc: '',
      args: [],
    );
  }

  /// `Weather Forecast`
  String get weather_title {
    return Intl.message(
      'Weather Forecast',
      name: 'weather_title',
      desc: '',
      args: [],
    );
  }

  /// `city`
  String get weather_city {
    return Intl.message(
      'city',
      name: 'weather_city',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting_title {
    return Intl.message(
      'Setting',
      name: 'setting_title',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get setting_about {
    return Intl.message(
      'About',
      name: 'setting_about',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get setting_lang {
    return Intl.message(
      'Language',
      name: 'setting_lang',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get setting_lang_en {
    return Intl.message(
      'English',
      name: 'setting_lang_en',
      desc: '',
      args: [],
    );
  }

  /// `繁中`
  String get setting_lang_hant {
    return Intl.message(
      '繁中',
      name: 'setting_lang_hant',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about_title {
    return Intl.message(
      'About',
      name: 'about_title',
      desc: '',
      args: [],
    );
  }

  /// `This is my app`
  String get about_content {
    return Intl.message(
      'This is my app',
      name: 'about_content',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get nav_home {
    return Intl.message(
      'Home',
      name: 'nav_home',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get nav_setting {
    return Intl.message(
      'Setting',
      name: 'nav_setting',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Weather`
  String get app_title {
    return Intl.message(
      'Flutter Weather',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
