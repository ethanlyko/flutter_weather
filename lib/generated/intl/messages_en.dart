// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_content": MessageLookupByLibrary.simpleMessage("This is my app"),
        "about_title": MessageLookupByLibrary.simpleMessage("About"),
        "app_title": MessageLookupByLibrary.simpleMessage("Flutter Weather"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "nav_home": MessageLookupByLibrary.simpleMessage("Home"),
        "nav_setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "setting_about": MessageLookupByLibrary.simpleMessage("About"),
        "setting_lang": MessageLookupByLibrary.simpleMessage("Language"),
        "setting_lang_en": MessageLookupByLibrary.simpleMessage("English"),
        "setting_lang_hant": MessageLookupByLibrary.simpleMessage("繁中"),
        "setting_title": MessageLookupByLibrary.simpleMessage("Setting"),
        "weather_city": MessageLookupByLibrary.simpleMessage("city"),
        "weather_err_city_not_found":
            MessageLookupByLibrary.simpleMessage("City not found"),
        "weather_err_invalid_api":
            MessageLookupByLibrary.simpleMessage("Invalid API key"),
        "weather_err_unknown": MessageLookupByLibrary.simpleMessage(
            "Weather service: Unknown error"),
        "weather_temp_high": MessageLookupByLibrary.simpleMessage("H"),
        "weather_temp_low": MessageLookupByLibrary.simpleMessage("L"),
        "weather_title":
            MessageLookupByLibrary.simpleMessage("Weather Forecast")
      };
}
