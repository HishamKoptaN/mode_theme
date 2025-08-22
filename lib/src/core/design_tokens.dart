import 'package:flutter/material.dart';

class DesignTokens {
  final double drawerElevation;
  final BorderRadius defaultRadius;
  final BorderRadius defaultRadiusOnlyBottom;
  final double cardElevation;
  final EdgeInsets cardMargin;
  final BorderRadius checkboxRadius;
  final double splashRadius;
  final Size buttonMinSize;
  final Size buttonMaxSize;
  const DesignTokens({
    required this.drawerElevation,
    required this.defaultRadius,
    required this.defaultRadiusOnlyBottom,
    required this.cardElevation,
    required this.cardMargin,
    required this.checkboxRadius,
    required this.splashRadius,
    required this.buttonMinSize,
    required this.buttonMaxSize,
  });

  BorderSide outline(ColorScheme scheme) => BorderSide(color: scheme.outline);
  Color overlay(ColorScheme scheme) => scheme.primary.withOpacity(0.1);
  Color disabledFill(ColorScheme scheme) => scheme.onSurface.withOpacity(0.38);
  Color defaultFill(ColorScheme scheme) => scheme.onSurface.withOpacity(0.6);
  Color applyOpacity(Color color, double opacity) => color.withOpacity(opacity);
  Color splash(ColorScheme scheme) => applyOpacity(scheme.primary, 0.12);
  Color hint(ColorScheme scheme) => applyOpacity(scheme.onSurface, 0.6);
  Color disabled(ColorScheme scheme) => applyOpacity(scheme.onSurface, 0.38);
}
