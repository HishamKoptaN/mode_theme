import 'package:flutter/material.dart';
import '../../mode_theme.dart';

CheckboxThemeData checkboxTheme({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
}) {
  return CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return designTokens.disabledFill(colorScheme);
      }
      if (states.contains(WidgetState.selected)) {
        return colorScheme.primary;
      }
      return designTokens.defaultFill(colorScheme);
    }),
    checkColor: WidgetStateProperty.all(colorScheme.onPrimary),
    overlayColor: WidgetStateProperty.all(
      colorScheme.primary.withAlpha((0.1 * 255).toInt()),
    ),
    splashRadius: designTokens.splashRadius,
    shape: RoundedRectangleBorder(borderRadius: designTokens.checkboxRadius),
    side: designTokens.outline(colorScheme),
  );
}
