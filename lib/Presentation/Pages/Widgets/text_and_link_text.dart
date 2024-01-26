import 'package:flutter/material.dart';

class TextAndLinkText extends StatelessWidget {
  final String staticText;
  final String textLinked;

  const TextAndLinkText({
    super.key,
    required this.staticText,
    required this.textLinked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          staticText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          textLinked,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationThickness: 2.0, // Ajuste a espessura aqui
            decorationColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
