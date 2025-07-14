import 'package:flutter/material.dart';
import '../../mode_theme.dart';

CardTheme appBarTheme({required ColorScheme colorScheme}) {
  return CardTheme(
    elevation: DesignTokens.cardElevation,
    shadowColor: colorScheme.shadow,
    shape: const RoundedRectangleBorder(
      borderRadius: DesignTokens.cardRadius,
    ),
  );
}
