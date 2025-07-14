import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mode_theme/mode_theme.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

Future<void> initializeModeThemeApp(
  Widget Function(BuildContext) builder,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getTemporaryDirectory()).path,
    ),
  );
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: _ModeThemeRoot(builder),
    ),
  );
}

class _ModeThemeRoot extends StatelessWidget {
  final Widget Function(BuildContext) builder;

  const _ModeThemeRoot(this.builder);

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
