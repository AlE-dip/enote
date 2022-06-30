import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class StringSource {
  static String getText(BuildContext context, String key){
    return AppLocalizations.of(context)!.getText(key);
  }
}

class AppLocalizations {
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String getText(String key) => language[key];
}

late Map<String, dynamic> language;

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'vn'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    String string = await rootBundle.loadString("assets/strings/${locale.languageCode}.json");
    language = json.decode(string);
    return SynchronousFuture<AppLocalizations>(AppLocalizations());
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}