import 'package:flutter/material.dart';

class AppThemeEffects {
  static const PageTransitionsTheme pageTransitions = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static ScrollbarThemeData scrollbar(ColorScheme colorScheme) =>
      ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(colorScheme.primary),
        trackColor: WidgetStateProperty.all(colorScheme.onSurface),
      );
}
