// TODO: Verificar se tem mais características em um exercício
class Exercise {
  final String name;
  final String mainMuscle;
  final List<String> equipmentsWhereToDo;
  // Can will have variant quantity, example (4-6)
  final String numberSeries;
  final String numberRepetitions;
  final String weight;

  // Constructors
  Exercise({
    required this.name,
    required this.mainMuscle,
    required this.equipmentsWhereToDo,
    required this.numberSeries,
    required this.numberRepetitions,
    required this.weight,
  });
}
