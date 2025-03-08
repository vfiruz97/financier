import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme =
      ThemeData.dark().copyWith(textTheme: const TextTheme(titleSmall: TextStyle(color: Colors.black)));

  static final darkTheme = ThemeData.dark();
}
