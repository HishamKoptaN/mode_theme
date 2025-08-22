import 'package:flutter/material.dart';
import '../components/card_theme.dart';
import '../components/dialog_theme_data.dart';
import '../components/drawer_theme_data.dart';
import '../components/dropdown_menu_theme_data.dart';
import '../components/page_transitions_theme.dart';
import '../components/scrollbar_theme_data.dart';
import '../components/snackbar_theme.dart';
import '../components/switch_theme_data.dart';
import '../../mode_theme.dart';
import '../core/app_divider.dart';
import '../core/app_fonts.dart';

ThemeData darkTheme({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
  required TextStyle baseTextStyle,
}) {
  final textTheme = getDarkTextTheme(
    colorScheme: colorScheme,
    baseTextStyle: baseTextStyle,
  );
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: AppFonts.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    colorScheme: colorScheme,
    textTheme: textTheme,
    drawerTheme: drawerThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    // ! Buttons
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    inputDecorationTheme: inputDecorationTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    appBarTheme: appBarTheme(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    cardTheme: cardThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    checkboxTheme: checkboxTheme(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    snackBarTheme: snackBarTheme(
      textTheme: textTheme,
      colorScheme: colorScheme,
    ),
    switchTheme: switchThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    // ! Colors
    canvasColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    primaryColor: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: designTokens.splash(colorScheme),
    hintColor: designTokens.hint(colorScheme),
    // iconTheme: AppThemeTokens.iconTheme(colorScheme.onSurface),
    // iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    dialogTheme: dialogThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    pageTransitionsTheme: customPageTransitionsTheme,
    scrollbarTheme: scrollbarThemeData(colorScheme),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    dividerTheme: DividerThemeData(
      color: colorScheme.outline,
      thickness: AppDivider.thickness,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
