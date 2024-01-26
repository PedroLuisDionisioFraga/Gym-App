import 'package:flutter/material.dart';
import 'package:gym_app/Core/constants.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Constants.pathToBackgroundLogin,
      fit: BoxFit.cover,
    );
  }
}