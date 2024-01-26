import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String pathToBackground;

  const BackgroundWidget({
    super.key,
    required this.pathToBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathToBackground,
      fit: BoxFit.cover,
    );
  }
}
