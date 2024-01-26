import 'package:flutter/material.dart';

class NumberOfSeries extends StatefulWidget {
  const NumberOfSeries({super.key});

  @override
  State<NumberOfSeries> createState() => _NumberOfSeriesState();
}

class _NumberOfSeriesState extends State<NumberOfSeries> {
  final GlobalKey textKey = GlobalKey();
  double textWidth = 0;
  /*
  Utilizamos o método didChangeDependencies para agendar a obtenção da largura do widget Text após as dependências do widget terem sido alteradas. Isso garante que estejamos acessando o widget Text depois que ele foi completamente construído e renderizado na tela.
  */

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox textWidget = textKey.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        textWidth = textWidget.size.width;
      });
    });
  }

  @override
  void dispose() {
    textKey.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          key: textKey,
          "Séries",
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.05,
          width: textWidth * 1.25,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 1),
          ),
        ),
      ],
    );
  }
}
