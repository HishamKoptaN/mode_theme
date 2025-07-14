import 'package:flutter/material.dart';
import '../components/dialog_theme_data.dart';
import '../components/dropdown_menu_theme_data.dart';
import '../components/snackbar_theme.dart';
import '../components/switch_theme_data.dart';
import '../../mode_theme.dart';

ThemeData darkTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
    // primary: DarkColors.primary,
    // onPrimary: DarkColors.onPrimary,
    // primaryContainer: DarkColors.primaryContainer,
    // onPrimaryContainer: DarkColors.onPrimaryContainer,
    // secondary: DarkColors.secondary,
    // onSecondary: Colors.black,
    // error: DarkColors.error,
    // onError: Colors.black,
    // surface: DarkColors.surface,
    // onSurface: DarkColors.onSurface,
    // outline: DarkColors.outline,
  );
  final textTheme = getLightTextTheme(colorScheme: colorScheme);
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Cairo',
    scaffoldBackgroundColor: colorScheme.surface,
    colorScheme: colorScheme,
    textTheme: getDarkTextTheme(colorScheme: colorScheme),
    drawerTheme: DrawerThemeData(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
    ),
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
    cardTheme: CardThemeData(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
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
    dialogBackgroundColor: colorScheme.surface,
    primaryColor: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: colorScheme.primary.withOpacity(0.12),
    hintColor: colorScheme.onSurface.withOpacity(0.6),
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    dialogTheme: dialogThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
