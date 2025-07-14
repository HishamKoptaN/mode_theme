import 'package:flutter/material.dart';

class DesignTokens {
  static const BorderRadius defaultRadius = BorderRadius.all(
    Radius.circular(12),
  );
  static BorderRadius defaultRadiusOnlyBottom = const BorderRadius.vertical(
    bottom: Radius.circular(12),
  );
  static const BorderRadius cardRadius = BorderRadius.all(Radius.circular(12));
  static const double cardElevation = 4.0;
  static const EdgeInsets cardMargin = EdgeInsets.symmetric(
    vertical: 8,
    horizontal: 16,
  );
  // Border radius
  static const BorderRadius checkboxRadius = BorderRadius.all(
    Radius.circular(4),
  );

  // Splash effect radius
  static const double splashRadius = 20;

  // Outline color (shared)
  static BorderSide outline(ColorScheme colorScheme) =>
      BorderSide(color: colorScheme.outline);

  // Overlay color for all interactive widgets
  static Color overlay(ColorScheme colorScheme) =>
      colorScheme.primary.withAlpha((0.1 * 255).toInt());

  // Disabled fill color
  static Color disabledFill(ColorScheme colorScheme) =>
      colorScheme.onSurface.withAlpha((0.38 * 255).toInt());

  // Default fill color
  static Color defaultFill(ColorScheme colorScheme) =>
      colorScheme.onSurface.withAlpha((0.6 * 255).toInt());
  static Color applyOpacity(Color color, double opacity) =>
      color.withAlpha((opacity * 255).round());
}
