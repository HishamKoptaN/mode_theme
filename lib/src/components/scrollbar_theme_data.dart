import 'package:flutter/material.dart';

ScrollbarThemeData scrollbarThemeData(ColorScheme colorScheme) {
  return ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(colorScheme.primary),
    trackColor: WidgetStateProperty.all(colorScheme.onSurface),
  );
}
