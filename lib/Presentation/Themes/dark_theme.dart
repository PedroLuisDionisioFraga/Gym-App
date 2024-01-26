import 'package:flutter/material.dart';

class DarkTheme {
  //static const darkGray = Color.fromRGBO(51, 51, 51, 1);
  // Um valor de 00 significa que esta cor é totalmente transparente.
  // Um valor de FF significa que esta cor é totalmente opaca.
  // alpha = opacity
  static const darkGray = Color(0xFF333333);
  static const disabledColor = Color.fromRGBO(255, 255, 255, 0.38);

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark().copyWith(
      background: const Color.fromARGB(255, 12, 0, 82),

      // Gradient
      primaryContainer: const Color.fromARGB(255, 12, 0, 82),
      secondaryContainer: const Color.fromARGB(255, 18, 0, 119),
      tertiaryContainer: const Color.fromARGB(255, 18, 0, 157),
    ),
    textTheme: const TextTheme(),

    //splashColor: Colors.white,

    iconTheme: const IconThemeData(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    cardTheme: const CardTheme(),
  );
}
