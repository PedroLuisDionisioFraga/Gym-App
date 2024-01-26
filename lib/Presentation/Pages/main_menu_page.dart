import 'package:flutter/material.dart';

import 'Trains/exercise_list.dart';
import 'Widgets/app_bar_main_menu.dart';

// TODO: Falta tudo kkkk
class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(height: maxHeight * 0.6),
          const AppBarToMainMenu(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: maxHeight * 0.8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(180, 160),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.black87,
                    Colors.black,
                  ],
                ),
              ),
              child: const ExerciseList(),
            ),
          ),
        ],
      ),
    );
  }
}
