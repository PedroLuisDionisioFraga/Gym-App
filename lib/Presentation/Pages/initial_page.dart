import 'package:flutter/material.dart';

import '../../Core/app_routes.dart';
import '../../Core/constants.dart';
import 'Auth/Widgets/background_widget.dart';
import 'Widgets/button_confirm_widget.dart';

// TODO: Adicionar as opções de ir direto para "login" ou "cadastro"
class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Remove this function and find other way to apply the required value
    double arithmeticAverage(BuildContext context) {
      return (MediaQuery.sizeOf(context).height + MediaQuery.sizeOf(context).width) / 2;
    }

    final double mainFontSize = 1.2 * arithmeticAverage(context) * (40 / 681);
    final double secondaryFontSize = 0.45 * arithmeticAverage(context) * (40 / 681);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 18, 20, 1),
      body: Stack(
        children: [
          const BackgroundWidget(
            pathToBackground: Constants.pathToBackgroundInitialPage,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0, 0.275),
                colors: [
                  Color.fromRGBO(18, 18, 20, 0),
                  Color.fromRGBO(18, 18, 20, 1),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.35),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    "Potencialize, transforme e",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: mainFontSize,
                    ),
                  ),
                  Text(
                    "supere seus limites",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromRGBO(172, 223, 89, 1),
                      fontSize: mainFontSize,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 34.0,
                      right: 34.0,
                    ),
                    child: Text(
                      "Acompanhe suas atividades diárias, queime calorias e arquive seus objetivos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: secondaryFontSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonConfirmWidget(
            text: "Começar Agora",
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.login);
            },
          ),
        ],
      ),
    );
  }
}
