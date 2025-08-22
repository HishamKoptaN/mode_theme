// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mode_theme/mode_theme.dart';

// class ModeThemeRoot extends StatelessWidget {
//   final Widget child;
//   final ThemeData lightTheme;
//   final ThemeData darkTheme;

//   const ModeThemeRoot({
//     super.key,
//     required this.child,
//     required this.lightTheme,
//     required this.darkTheme,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => ThemeBloc(),
//       child: BlocBuilder<ThemeBloc, ThemeState>(
//         builder: (context, state) {
//           return MaterialApp(
//             theme: lightTheme,
//             darkTheme: darkTheme,
//             themeMode: state.mode,
//             home: child,
//           );
//         },
//       ),
//     );
//   }
// }
