import 'package:flutter/material.dart';
import '../../mode_theme.dart';

DropdownMenuThemeData dropdownMenuThemeData({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  InputDecorationTheme? decorationTheme,
  required DesignTokens designTokens,
}) {
  return DropdownMenuThemeData(
    textStyle: textTheme.bodyLarge?.copyWith(color: colorScheme.onSurface),
    inputDecorationTheme:
        decorationTheme ??
        InputDecorationTheme(
          filled: true,
          fillColor: colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: designTokens.defaultRadius,
            borderSide: designTokens.outline(colorScheme),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: designTokens.defaultRadius,
            borderSide: designTokens.outline(colorScheme),
          ),
        ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.surface),
      elevation: WidgetStateProperty.all(designTokens.cardElevation),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
      ),
      padding: WidgetStateProperty.all(designTokens.cardMargin),
    ),
  );
}
