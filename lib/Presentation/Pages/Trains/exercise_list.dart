import 'package:flutter/material.dart';

import 'exercise_explanation.dart';

// TODO: Falta deixar a página mais parecida com o design no figma
class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        //TODO: Adicionar os cards de exercícios
        ExerciseExplanation(),
        ExerciseExplanation(),
        ExerciseExplanation(),
        ExerciseExplanation(),
        ExerciseExplanation(),
      ],
    );
  }
}
