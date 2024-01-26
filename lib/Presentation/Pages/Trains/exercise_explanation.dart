import 'package:flutter/material.dart';

import 'Widgets/number_of_repetitions.dart';
import 'Widgets/number_of_series.dart';
import 'Widgets/weight.dart';

// TODO: Falta deixar a página mais parecida com o design no figma
class ExerciseExplanation extends StatelessWidget {
  const ExerciseExplanation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Remove this function and find other way to apply the required value
    double arithmeticAverage(BuildContext context) {
      return (MediaQuery.sizeOf(context).height + MediaQuery.sizeOf(context).width) / 2;
    }

    return Container(
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 6.0,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 4,
        right: 8,
        bottom: 10,
      ),
      child: Stack(
        children: [
          //* Nome do Exercício
          const Align(
            alignment: Alignment.topCenter,
            child: Text("Nome do Exercício"),
          ),
          Row(
            children: [
              //* Foto do músculo alvo
              Container(
                margin: const EdgeInsets.only(
                  right: 4,
                ),
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    arithmeticAverage(context) * 0.04,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    arithmeticAverage(context) * 0.04,
                  ),
                  child: Image.asset(
                    "Assets/Images/Muscles/antebraço.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //* Séries, Repetições e Carga
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const NumberOfSeries(),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: const VerticalDivider(
                          thickness: 1,
                          color: Color.fromARGB(204, 0, 0, 0),
                        ),
                      ),
                      const NumberOfRepetitions(),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: const VerticalDivider(
                          thickness: 1,
                          color: Color.fromARGB(204, 0, 0, 0),
                        ),
                      ),
                      // TODO: Deve ser um "TextFormField" que o cliente coloca o peso dele
                      const Weight(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          //* Ícone de dúvidas
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.help),
            ),
          ),
        ],
      ),
    );
  }
}
