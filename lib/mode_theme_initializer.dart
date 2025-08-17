import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mode_theme/mode_theme.dart';

class ModeThemeRoot extends StatelessWidget {
  final Widget Function(BuildContext) builder;
  const ModeThemeRoot(this.builder, {super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => builder(context),
      ),
    );
  }
}
