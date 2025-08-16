import 'package:flutter/material.dart';

import 'app_icon_sizes.dart';
import 'design_tokens.dart';
import 'dimensions.dart';

class AppThemeTokens {
  static const radius = AppDimensions.radius;
  static const padding = AppPadding.horizontal;
  static const cardMargin = DesignTokens.cardMargin;
  static const elevation = DesignTokens.cardElevation;
  static const splashRadius = DesignTokens.splashRadius;
  static const textSizeTitle = AppTextSizes.title;
  static IconThemeData iconTheme(Color color) =>
      IconThemeData(color: color, size: AppIconSizes.normal);
}
