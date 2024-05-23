// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static Locale? get locale => const Locale('en', 'US');
  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'K_1_Hello': 'Hello ',
        },
        'vi': {
          'K_1_Hello': 'Xin Chao',
        },
      };
}
