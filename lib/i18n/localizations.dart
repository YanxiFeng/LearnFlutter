import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart';

class HYLocalizations {
  final Locale locale;
  HYLocalizations(this.locale);

  Future loadJson() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/i18n.json");

    // 2.对json进行解析
    Map<String, dynamic> map = json.decode(jsonString);

    _localizeValues = map.map((key, value) {
      return MapEntry(key, value.cast<String, String>());
    });
  }

  static Map<String, Map<String, String>> _localizeValues = {
    "en": {"title": "Home", "hello": "Hello", "pickTime": "Pick a time~"},
    "zh": {"title": "首页", "hello": "您好", "pickTime": "选择一个时间~"},
  };

  String? get title {
    return _localizeValues[locale.languageCode]!["title"];
  }
}
