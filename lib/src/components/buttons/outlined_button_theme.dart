import 'package:flutter/material.dart';
import 'package:mode_theme/src/core/dimensions.dart';
import '../../core/design_tokens.dart';

OutlinedButtonThemeData outlinedButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  required DesignTokens designTokens,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(colorScheme.primary),
      side: WidgetStateProperty.resolveWith((states) {
        return BorderSide(
          color: states.contains(WidgetState.disabled)
              ? designTokens.applyOpacity(colorScheme.onSurface, 0.12)
              : colorScheme.primary,
        );
      }),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppPadding.horizontal,
          vertical: AppPadding.vertical,
        ),
      ),
      // minimumSize: WidgetStateProperty.all(
      //   Size(120.w, AppDimensions.buttonHeight.h),
      // ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
      ),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
    ),
  );
}
