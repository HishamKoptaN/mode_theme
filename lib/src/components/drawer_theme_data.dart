import 'package:flutter/material.dart';
import '../core/design_tokens.dart';

DrawerThemeData drawerThemeData({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
}) {
  return DrawerThemeData(
    backgroundColor: colorScheme.surface,
    surfaceTintColor: Colors.transparent,
    elevation: designTokens.drawerElevation,
    shape: RoundedRectangleBorder(borderRadius: designTokens.defaultRadius),
  );
}
