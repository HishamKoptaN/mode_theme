import 'package:flutter/material.dart';
import 'src/modes/light_theme.dart';
import 'src/modes/dark_theme.dart';

class AppTheme {
  static final ThemeData light = lightTheme();
  static final ThemeData dark = darkTheme();
}
