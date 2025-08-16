import 'package:flutter/material.dart';
import '../core/design_tokens.dart';

DrawerThemeData drawerThemeData(ColorScheme colorScheme) {
  return DrawerThemeData(
    backgroundColor: colorScheme.surface,
    surfaceTintColor: Colors.transparent,
    elevation: DesignTokens.drawerElevation,
    shape: RoundedRectangleBorder(borderRadius: DesignTokens.drawerRadius),
  );
}
