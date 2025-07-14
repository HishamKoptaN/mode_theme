import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design_tokens.dart';
import '../../core/dimensions.dart';

IconButtonThemeData iconButtonTheme({required ColorScheme colorScheme}) {
  return IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DesignTokens.applyOpacity(colorScheme.onSurface, 0.38);
        }
        return colorScheme.primary;
      }),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all(EdgeInsets.all(AppPadding.vertical.w)),
      minimumSize: WidgetStateProperty.all(Size(40.w, 40.h)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: DesignTokens.defaultRadius),
      ),
    ),
  );
}
