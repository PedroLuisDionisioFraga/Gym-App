import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ButtonConfirmWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const ButtonConfirmWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
          ),
        ),
      ).animate(onPlay: (controller) => controller.repeat()).shimmer(delay: 800.ms, duration: 1250.ms),
    );
  }
}
