import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.light()) {
    on<ThemeEvent>((event, emit) {
      event.map(
        toggleTheme: (_) {
          emit(
            state.mode == ThemeMode.light
                ? ThemeState.dark()
                : ThemeState.light(),
          );
        },
        setLight: (_) => emit(ThemeState.light()),
        setDark: (_) => emit(ThemeState.dark()),
        setMode: (v) {},
      );
    });
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final modeStr = json['mode'] as String?;
    if (modeStr == null) return null;
    return modeStr == 'dark' ? ThemeState.dark() : ThemeState.light();
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {'mode': state.mode.name};
  }
}
