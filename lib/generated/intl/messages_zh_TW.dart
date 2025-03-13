// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_content": MessageLookupByLibrary.simpleMessage("這是我的 app"),
        "about_title": MessageLookupByLibrary.simpleMessage("關於"),
        "app_title": MessageLookupByLibrary.simpleMessage("Flutter 天氣"),
        "common_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "common_yes": MessageLookupByLibrary.simpleMessage("確定"),
        "nav_home": MessageLookupByLibrary.simpleMessage("首頁"),
        "nav_setting": MessageLookupByLibrary.simpleMessage("設定"),
        "setting_about": MessageLookupByLibrary.simpleMessage("關於"),
        "setting_lang": MessageLookupByLibrary.simpleMessage("語言"),
        "setting_lang_en": MessageLookupByLibrary.simpleMessage("English"),
        "setting_lang_hant": MessageLookupByLibrary.simpleMessage("繁中"),
        "setting_title": MessageLookupByLibrary.simpleMessage("設定"),
        "weather_city": MessageLookupByLibrary.simpleMessage("城市"),
        "weather_err_city_not_found":
            MessageLookupByLibrary.simpleMessage("找不到城市"),
        "weather_err_invalid_api":
            MessageLookupByLibrary.simpleMessage("無效的 API Key"),
        "weather_err_unknown":
            MessageLookupByLibrary.simpleMessage("天氣服務：未知的錯誤"),
        "weather_temp_high": MessageLookupByLibrary.simpleMessage("高"),
        "weather_temp_low": MessageLookupByLibrary.simpleMessage("低"),
        "weather_title": MessageLookupByLibrary.simpleMessage("天氣預報")
      };
}
