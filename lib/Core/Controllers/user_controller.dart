import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Presentation/Pages/Auth/Widgets/alert_dialog_widget.dart';
import '../Models/user_model.dart';
import '../Repository/APIs/Mock/mock_api.dart';
import '../app_routes.dart';
import '../constants.dart';
import '../Utils/Validations/input_validator.dart';

class UserController {
  static TextEditingController? usernameController;
  static TextEditingController? passwordController;

  UserController._();

  static void goToPrivacyPolicy() async {
    final Uri url = Uri.parse(Constants.googleURL);
    launchUrl(url, mode: LaunchMode.externalApplication);
  }

  static void validateLogin(BuildContext context) {
    final String username = usernameController!.text;
    final String password = passwordController!.text;

    final UserModel userModel = UserModel(
      username: username,
      password: password,
    );

    final String? usernameError = username.validateUsername();
    final String? passwordError = password.validatePassword();

    if (usernameError != null || passwordError != null) {
      showAdaptiveDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialogToLogin(
            widget: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (usernameError != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        usernameError,
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      if (passwordError != null)
                        const Divider(
                          thickness: 1,
                        ),
                    ],
                  ),
                if (passwordError != null)
                  Text(
                    passwordError,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          );
        },
      );
    } else {
      final MockAPI mockAPI = MockAPI();
      mockAPI.authUser(userModel).then((value) {
        final bool canLogin;
        canLogin = value;
        if (canLogin) {
          Navigator.of(context).pushNamed(AppRoutes.mainMenu);
        } else {
          showAdaptiveDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialogToLogin(
                widget: Text(Constants.alertDialogInvalidUserOrPassword),
              );
            },
          );
        }
      });
    }
  }
}
