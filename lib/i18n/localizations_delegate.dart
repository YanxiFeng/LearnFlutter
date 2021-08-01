import 'package:flutter/material.dart';
import 'package:learnflutter/i18n/localizations.dart';

class HYLocalizationDelagate extends LocalizationsDelegate<HYLocalizations> {
  static HYLocalizationDelagate delagate = HYLocalizationDelagate();

  @override
  bool isSupported(Locale locale) {
    return ["zh", "en"].contains(locale.languageCode);
  }

  @override
  Future<HYLocalizations> load(Locale locale) async {
    final localizations = HYLocalizations(locale);
    await localizations.loadJson();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) {
    return false;
  }
}
