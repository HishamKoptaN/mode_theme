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
import '../core/app_theme_tokens.dart';

ThemeData darkTheme({required ColorScheme colorScheme}) {
  final textTheme = getDarkTextTheme(colorScheme: colorScheme);
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: AppFonts.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    colorScheme: colorScheme,
    textTheme: textTheme,
    drawerTheme: drawerThemeData(colorScheme),
    // ! Buttons
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    inputDecorationTheme: inputDecorationTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    cardTheme: cardThemeData(colorScheme: colorScheme),
    checkboxTheme: checkboxTheme(colorScheme: colorScheme),
    snackBarTheme: snackBarTheme(
      textTheme: textTheme,
      colorScheme: colorScheme,
    ),
    switchTheme: switchThemeData(colorScheme: colorScheme),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    // ! Colors
    canvasColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    primaryColor: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: DesignTokens.splash(colorScheme),
    hintColor: DesignTokens.hint(colorScheme),
    iconTheme: AppThemeTokens.iconTheme(colorScheme.onSurface),
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
