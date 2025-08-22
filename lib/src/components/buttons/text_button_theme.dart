import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design_tokens.dart';
import '../../core/dimensions.dart';

TextButtonThemeData textButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  required DesignTokens designTokens,
}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.disabled)
            ? designTokens.applyOpacity(colorScheme.onSurface, 0.38)
            : colorScheme.primary;
      }),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppPadding.horizontal.w,
          vertical: AppPadding.vertical.h,
        ),
      ),
      minimumSize: WidgetStateProperty.all(Size(100.w, 40.h)),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: designTokens.defaultRadius!),
      ),
    ),
  );
}
