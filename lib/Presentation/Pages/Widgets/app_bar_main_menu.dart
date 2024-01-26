import 'package:flutter/material.dart';


class AppBarToMainMenu extends StatelessWidget {
  const AppBarToMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Remove this function and find other way to apply the required value
    double arithmeticAverage(BuildContext context) {
      return (MediaQuery.sizeOf(context).height + MediaQuery.sizeOf(context).width) / 2;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: ListTile(
        leading: InkWell(
          child: CircleAvatar(
            radius: arithmeticAverage(context) * 0.07,
            backgroundImage: const AssetImage("Assets/Images/perfil-example.jpg"),
          ),
          onTap: () {
            //TODO: Ir para o "Drawer"
          },
        ),
        title: const Text("Bom dia 👋,"),
        titleTextStyle: const TextStyle(
          fontFamily: "Robot",
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Colors.black,
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text("Pedro!"),
        ),
        subtitleTextStyle: const TextStyle(
          fontFamily: "Robot",
          fontSize: 17.5,
          color: Color.fromARGB(94, 0, 0, 0),
        ),
      ),
    );
  }
}
