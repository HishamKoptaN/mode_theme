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
import '../core/app_theme_tokens.dart';

ThemeData lightTheme({required ColorScheme colorScheme}) {
  final textTheme = getLightTextTheme(colorScheme: colorScheme);
  return ThemeData(
    colorScheme: colorScheme,
    brightness: Brightness.light,
    fontFamily: AppFonts.primary,
    useMaterial3: true,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    iconTheme: AppThemeTokens.iconTheme(colorScheme.onSurface),
    textTheme: textTheme,
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    drawerTheme: drawerThemeData(colorScheme),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    dialogTheme: dialogThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    checkboxTheme: checkboxTheme(colorScheme: colorScheme),
    cardTheme: cardThemeData(colorScheme: colorScheme),
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
    ),
    // ! Buttons
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    switchTheme: switchThemeData(colorScheme: colorScheme),
    // ! Colors
    canvasColor: colorScheme.surface,
    primaryColorLight: colorScheme.primaryContainer,
    primaryColorDark: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: DesignTokens.splash(colorScheme),
    hintColor: DesignTokens.hint(colorScheme),
    hoverColor: colorScheme.primary,
    focusColor: colorScheme.primary,
    disabledColor: colorScheme.onSurface,
    primaryIconTheme: IconThemeData(color: colorScheme.onPrimary),
    primaryTextTheme: textTheme,
    pageTransitionsTheme: customPageTransitionsTheme,
    scrollbarTheme: scrollbarThemeData(colorScheme),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: InkRipple.splashFactory,
  );
}
