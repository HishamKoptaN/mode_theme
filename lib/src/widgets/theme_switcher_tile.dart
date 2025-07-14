import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/index.dart';

class ThemeSwitcherTile extends StatelessWidget {
  const ThemeSwitcherTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.read<ThemeBloc>().state.mode == ThemeMode.dark;

    return SwitchListTile(
      value: isDark,
      onChanged: (value) {
        if (value) {
          context.read<ThemeBloc>().add(const ThemeEvent.setDark());
        } else {
          context.read<ThemeBloc>().add(const ThemeEvent.setLight());
        }
      },
      secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
