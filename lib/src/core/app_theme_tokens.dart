import 'package:flutter/material.dart';

import 'app_icon_sizes.dart';
import 'design_tokens.dart';
import 'dimensions.dart';

class AppThemeTokens {
  final DesignTokens tokens;
  const AppThemeTokens(this.tokens);
  double get radius => AppDimensions.radius;
  double get padding => AppPadding.horizontal;
  EdgeInsets get cardMargin => tokens.cardMargin;
  double get elevation => tokens.cardElevation;
  double get splashRadius => tokens.splashRadius;
  double get textSizeTitle => AppTextSizes.title;
  IconThemeData iconTheme(Color color) =>
      IconThemeData(color: color, size: AppIconSizes.normal);
}
