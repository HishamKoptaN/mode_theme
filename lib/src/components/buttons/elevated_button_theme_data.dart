import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design_tokens.dart';
import '../../core/dimensions.dart';

ElevatedButtonThemeData elevatedButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  final disabledBgColor = DesignTokens.applyOpacity(
    colorScheme.onSurface,
    0.12,
  );
  final disabledTextColor = DesignTokens.applyOpacity(
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
      elevation: WidgetStateProperty.all(2),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppPadding.horizontal.w,
          vertical: AppPadding.vertical.h,
        ),
      ),
      maximumSize: WidgetStateProperty.all(
        Size(225.w, AppDimensions.buttonHeight.h),
      ),
      minimumSize: WidgetStateProperty.all(
        Size(180.w, AppDimensions.buttonHeight.h),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: DesignTokens.defaultRadius),
      ),
      alignment: Alignment.center,
    ),
  );
}
