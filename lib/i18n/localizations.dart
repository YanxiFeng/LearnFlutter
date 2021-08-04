import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart';

class HYLocalizations {
  final Locale locale;
  HYLocalizations(this.locale);

  Map<String, Map<String, String>> _localizeValues = {};

  Future loadJson() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/i18n.json");

    // 2.对json进行解析
    Map<String, dynamic> map = json.decode(jsonString);

    _localizeValues = map.map((key, value) {
      return MapEntry(key, value.cast<String, String>());
    });
  }

  String? get title {
    return _localizeValues[locale.languageCode]!["title"];
  }
}
