import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mode_theme/mode_theme.dart';

class ModeTheme extends StatelessWidget {
  final Widget Function({
    required BuildContext context,
    required ThemeMode themeMode,
    required ThemeData lightMode,
    required ThemeData darkMode,
  })
  builder;
  const ModeTheme({super.key, required this.builder});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => builder(
          context: context,
          themeMode: state.mode,
          lightMode: lightTheme(),
          darkMode: darkTheme(),
        ),
      ),
    );
  }
}
