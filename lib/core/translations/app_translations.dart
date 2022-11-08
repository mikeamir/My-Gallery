import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/translations/languages/en.dart';

/// Used to make the app ready to support more languages if desired
class AppTranslations extends Translations {
  static const List delegates = [
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [Locale('en')];

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en': en,
    };
  }
}
