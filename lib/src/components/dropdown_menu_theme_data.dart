import 'package:flutter/material.dart';
import '../../mode_theme.dart';

DropdownMenuThemeData dropdownMenuThemeData({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  InputDecorationTheme? decorationTheme,
}) {
  return DropdownMenuThemeData(
    textStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurface,
    ),
    inputDecorationTheme: decorationTheme ??
        InputDecorationTheme(
          filled: true,
          fillColor: colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: DesignTokens.cardRadius,
            borderSide: DesignTokens.outline(colorScheme),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: DesignTokens.cardRadius,
            borderSide: DesignTokens.outline(colorScheme),
          ),
        ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.surface),
      elevation: WidgetStateProperty.all(DesignTokens.cardElevation),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: DesignTokens.cardRadius),
      ),
      padding: WidgetStateProperty.all(DesignTokens.cardMargin),
    ),
  );
}
