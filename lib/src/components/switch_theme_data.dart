import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/design_tokens.dart';

SwitchThemeData switchThemeData({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
}) {
  return SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? colorScheme.secondary
          : designTokens.applyOpacity(colorScheme.onSurface, 0.6);
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? designTokens.applyOpacity(colorScheme.secondary, 0.5)
          : designTokens.applyOpacity(colorScheme.onSurface, 0.3);
    }),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      return states.contains(WidgetState.selected)
          ? designTokens.applyOpacity(colorScheme.secondary, 0.8)
          : colorScheme.outline;
    }),
    trackOutlineWidth: WidgetStateProperty.all(1.0),
    overlayColor: WidgetStateProperty.all(
      designTokens.applyOpacity(colorScheme.secondary, 0.2),
    ),
    splashRadius: 18.r,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
