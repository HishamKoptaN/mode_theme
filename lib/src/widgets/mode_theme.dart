import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mode_theme/mode_theme.dart';

typedef ModeThemeBuilder =
    Widget Function({
      required ThemeData lightTheme,
      required ThemeData darkTheme,
      required ThemeMode currentTheme,
    });

class ModeTheme extends StatefulWidget {
  final ColorScheme lightColorScheme;
  final ColorScheme darkColorScheme;
  final DesignTokens designTokens;
  final TextStyle baseTextStyle;
  final ModeThemeBuilder builder;
  const ModeTheme({
    super.key,
    required this.lightColorScheme,
    required this.darkColorScheme,
    required this.designTokens,
    required this.baseTextStyle,
    required this.builder,
  });
  @override
  State<ModeTheme> createState() => _ModeThemeState();
}

class _ModeThemeState extends State<ModeTheme> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final currentTheme = state.mode;
          return widget.builder(
            lightTheme: lightTheme(
              colorScheme: widget.lightColorScheme,
              designTokens: widget.designTokens,
              baseTextStyle: widget.baseTextStyle,
            ),
            darkTheme: darkTheme(
              colorScheme: widget.darkColorScheme,
              designTokens: widget.designTokens,
              baseTextStyle: widget.baseTextStyle,
            ),
            currentTheme: currentTheme,
          );
        },
      ),
    );
  }
}
