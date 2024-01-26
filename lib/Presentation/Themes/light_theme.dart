import 'package:flutter/material.dart';

class LightTheme {
  LightTheme._();

  static const Color errorColor = Color.fromARGB(255, 231, 32, 32);
  static const Color textColor = Color.fromARGB(255, 0, 0, 0);

  //! Esquema de cores
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color.fromARGB(255, 247, 247, 247),
      secondary: const Color.fromARGB(255, 228, 1, 1),

      background: Colors.black,

      // Gradient
      primaryContainer: const Color.fromARGB(255, 37, 175, 255),
      secondaryContainer: const Color.fromARGB(255, 64, 166, 224),
      tertiaryContainer: const Color.fromARGB(228, 172, 223, 252),

      // Cor do erro
      error: errorColor,
    ),

    /*
    */

    //! Tema dos textos
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        color: textColor,
        fontSize: 12.5,
      ),
      labelSmall: TextStyle(
        color: Colors.white,
        fontFamily: "Lato",
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontFamily: "LexendDeca",
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: "Lato",
      ),
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(5),
      ),
    ),

    /*
    */

    //! Tema dos ícones
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 111, 69, 179),
      size: 22,
    ),
    //! Tema dos botões de ícones
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.zero),
        iconColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 170, 255)),
      ),
    ),
    //! Tema principal dos ícones
    primaryIconTheme: const IconThemeData(
      color: Colors.blueGrey,
      size: 22,
    ),

    /*
    */

    //! Tema da AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),

    /*
    */

    //! Tema do botão elevado
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(172, 223, 89, 1)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(0),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
      ),
    ),

    /*
    */

    //! Tema do Card
    cardTheme: const CardTheme(
      elevation: 10,
      shadowColor: Colors.black,
      color: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    ),

    /*selectionColor: define a cor de fundo do texto selecionado.
    selectionHandleColor: define a cor dos botões de seleção (alças) usados ​​para redimensionar a seleção. O que indica o tracinho que pisca
    cursorColor: define a cor do cursor intermitente usado para indicar onde o texto será inserido. O tracinho que pisca*/
    textSelectionTheme: const TextSelectionThemeData(
      // Muda a cor do "indicador" do tracinho que pisca quando escrevemos
      selectionHandleColor: Colors.blueGrey,
      cursorColor: Color.fromARGB(255, 130, 177, 255),
      selectionColor: Color.fromARGB(255, 119, 194, 255),
    ),

    /*
    */

    //! Tema do Form do TextFormField
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.5)),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Color.fromRGBO(216, 216, 221, 1),
    ),

    /*
    */

    //! Switch theme
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(
        Colors.white,
      ),
      trackColor: MaterialStatePropertyAll(
        Color.fromARGB(255, 160, 159, 153),
      ),
      trackOutlineColor: MaterialStatePropertyAll(
        Colors.transparent,
      ),
    ),
  );
}
