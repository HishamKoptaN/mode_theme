import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../exports.dart';

class ThemeModeSelector extends StatelessWidget {
  const ThemeModeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final currentMode = context.read<ThemeBloc>().state.mode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "اختر وضع الثيم",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        RadioListTile<ThemeMode>(
          title: const Text('وضع النظام'),
          value: ThemeMode.system,
          groupValue: currentMode,
          onChanged: (v) =>
              context.read<ThemeBloc>().add(ThemeEvent.setMode(mode: v!)),
        ),
        RadioListTile<ThemeMode>(
          title: const Text('الوضع النهاري'),
          value: ThemeMode.light,
          groupValue: currentMode,
          onChanged: (v) =>
              context.read<ThemeBloc>().add(ThemeEvent.setMode(mode: v!)),
        ),
        RadioListTile<ThemeMode>(
          title: const Text('الوضع الليلي'),
          value: ThemeMode.dark,
          groupValue: currentMode,
          onChanged: (v) =>
              context.read<ThemeBloc>().add(ThemeEvent.setMode(mode: v!)),
        ),
      ],
    );
  }
}
