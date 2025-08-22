import 'package:flutter/material.dart';
import '../../mode_theme.dart';

CardThemeData cardThemeData({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
}) {
  return CardThemeData(
    margin: designTokens.cardMargin,
    elevation: designTokens.cardElevation,
    shape: RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
    shadowColor: colorScheme.shadow,
  );
}
