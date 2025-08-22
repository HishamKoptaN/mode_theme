import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design_tokens.dart';
import '../../core/dimensions.dart';

FilledButtonThemeData filledButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  required DesignTokens designTokens,
}) {
  return FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return designTokens.applyOpacity(colorScheme.onSurface, 0.12);
        }
        return colorScheme.primary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return designTokens.applyOpacity(colorScheme.onSurface, 0.38);
        }
        return colorScheme.onPrimary;
      }),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppPadding.horizontal.w,
          vertical: AppPadding.vertical.h,
        ),
      ),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
      ),
    ),
  );
}
