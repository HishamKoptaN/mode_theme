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
import '../core/app_fonts.dart';

ThemeData lightTheme({
  required ColorScheme colorScheme,
  required DesignTokens designTokens,
  required TextStyle baseTextStyle,
}) {
  final textTheme = getLightTextTheme(
    colorScheme: colorScheme,
    baseTextStyle: baseTextStyle,
  );
  return ThemeData(
    colorScheme: colorScheme,
    brightness: Brightness.light,
    fontFamily: AppFonts.primary,
    useMaterial3: true,
    appBarTheme: appBarTheme(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    textTheme: textTheme,
    drawerTheme: drawerThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    dialogTheme: dialogThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    checkboxTheme: checkboxTheme(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    cardTheme: cardThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    snackBarTheme: snackBarTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    inputDecorationTheme: inputDecorationTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    // ! Buttons
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      designTokens: designTokens,
    ),
    switchTheme: switchThemeData(
      colorScheme: colorScheme,
      designTokens: designTokens,
    ),
    // ! Colors
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    primaryColorLight: colorScheme.primaryContainer,
    primaryColorDark: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: designTokens.splash(colorScheme),
    hintColor: designTokens.hint(colorScheme),
    hoverColor: colorScheme.primary,
    focusColor: colorScheme.primary,
    disabledColor: colorScheme.onSurface,
    primaryIconTheme: IconThemeData(color: colorScheme.primary),
    primaryTextTheme: textTheme,
    pageTransitionsTheme: customPageTransitionsTheme,
    scrollbarTheme: scrollbarThemeData(colorScheme),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: InkRipple.splashFactory,
  );
}
