import 'package:flutter/material.dart';
import 'package:gym_app/Core/constants.dart';

import 'Core/app_routes.dart';
import 'Presentation/Pages/Auth/Login/login_page.dart';
import 'Presentation/Pages/initial_page.dart';
import 'Presentation/Pages/main_menu_page.dart';
import 'Presentation/Themes/dark_theme.dart';
import 'Presentation/Themes/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: Constants.appName,
        theme: LightTheme.theme,
        darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.light,
        initialRoute: AppRoutes.login,
        routes: {
          AppRoutes.initial: (context) => const InitialPage(),
          AppRoutes.login: (context) => const LoginPage(),
          //AppRoutes.SIGN_UP: (context) => const SignUpPage(),
          AppRoutes.mainMenu: (context) => const MainMenuPage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void goingToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const LoginPage();
      }),
    );
  }

  // void goingToSignUp(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) {
  //       return const SignUpPage();
  //     }),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: gradientToMainPage(context),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: ElevatedButton(
                  onPressed: () {
                    goingToLogin(context);
                  },
                  child: const Text("Login"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: ElevatedButton(
                  onPressed: () {
                    //goingToSignUp(context);
                  },
                  child: const Text("SignUp"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

LinearGradient gradientToMainPage(BuildContext context) {
  return LinearGradient(
    colors: [
      Theme.of(context).colorScheme.primaryContainer,
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.tertiaryContainer,
    ],
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
  );
}
