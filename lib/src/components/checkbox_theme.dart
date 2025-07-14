import 'package:flutter/material.dart';
import '../../mode_theme.dart';

CheckboxThemeData checkboxTheme({required ColorScheme colorScheme}) {
  return CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return DesignTokens.disabledFill(colorScheme);
      }
      if (states.contains(WidgetState.selected)) {
        return colorScheme.primary;
      }
      return DesignTokens.defaultFill(colorScheme);
    }),
    checkColor: WidgetStateProperty.all(colorScheme.onPrimary),
    overlayColor: WidgetStateProperty.all(
      colorScheme.primary.withAlpha((0.1 * 255).toInt()),
    ),
    splashRadius: DesignTokens.splashRadius,
    shape: RoundedRectangleBorder(borderRadius: DesignTokens.checkboxRadius),
    side: DesignTokens.outline(colorScheme),
  );
}
