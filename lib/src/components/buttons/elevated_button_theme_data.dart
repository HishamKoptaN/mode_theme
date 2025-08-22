import 'package:flutter/material.dart';
import '../../core/design_tokens.dart';

ElevatedButtonThemeData elevatedButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  required DesignTokens designTokens,
}) {
  final disabledBgColor = designTokens.applyOpacity(
    colorScheme.onSurface,
    0.12,
  );
  final disabledTextColor = designTokens.applyOpacity(
    colorScheme.onSurface,
    0.38,
  );
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.disabled)
            ? disabledBgColor
            : colorScheme.primary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.disabled)
            ? disabledTextColor
            : colorScheme.onPrimary;
      }),
      shadowColor: WidgetStateProperty.all(colorScheme.shadow),
      surfaceTintColor: WidgetStateProperty.all(colorScheme.surfaceTint),
      // elevation: WidgetStateProperty.all(designTokens.buttonElevation),
      textStyle: WidgetStateProperty.all(textTheme.headlineLarge),
      // padding: WidgetStateProperty.all(designTokens.buttonPadding),
      maximumSize: WidgetStateProperty.all(designTokens.buttonMaxSize),
      minimumSize: WidgetStateProperty.all(designTokens.buttonMinSize),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
      ),
      alignment: Alignment.center,
    ),
  );
}
