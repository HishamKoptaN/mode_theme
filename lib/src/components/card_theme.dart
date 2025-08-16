import 'package:flutter/material.dart';
import '../../mode_theme.dart';

CardThemeData cardThemeData({required ColorScheme colorScheme}) {
  return CardThemeData(
    margin: DesignTokens.cardMargin,
    elevation: DesignTokens.cardElevation,
    shape: RoundedRectangleBorder(borderRadius: DesignTokens.cardRadius),
    shadowColor: colorScheme.shadow,
  );
}
