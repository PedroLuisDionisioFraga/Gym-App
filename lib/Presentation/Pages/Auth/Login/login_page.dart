import 'package:flutter/material.dart';

import '../../../../Core/Controllers/user_controller.dart';
import '../../../../Core/constants.dart';
import '../../Widgets/button_confirm_widget.dart';
import '../Widgets/auth_type_widget.dart';
import '../Widgets/background_widget.dart';
import '../Widgets/formulary_widget.dart';

// Login specific widgets
import 'Widgets/forgot_password_widget.dart';
import 'Widgets/remember_me_widget.dart';
//import '../Widgets/privacy_policy_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// Get the value of height of the keyboard when it's apers
    final double bottomInset = MediaQuery.viewInsetsOf(context).bottom;
    //final bool isKeyboardOpen = bottomInset > 0.0;

    /// Get the value of the width of the screen
    final double horizontalPadding = MediaQuery.sizeOf(context).width * 0.125;

    /// Performs the login operation.
    /// Calls the `validateLogin` method of the `UserController` class to validate the login credentials.
    void doLogin() {
      // TODO: Implement the login logic here

      UserController.validateLogin(context);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundWidget(
            pathToBackground: Constants.pathToBackgroundLogin,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: bottomInset,
              right: horizontalPadding,
              left: horizontalPadding,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AuthTypeWidget(authType: Constants.login),
                  const FormularyWidget(),
                  const SizedBox(height: 2),
                  // isKeyboardOpen ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.125) : SizedBox(height: MediaQuery.sizeOf(context).height * 0.225),
                  //const PrivacyPolicyWidget(),
                  const RememberMeWidget(),
                  const ForgotPasswordWidget(),
                  ButtonConfirmWidget(
                    text: Constants.login,
                    onPressed: doLogin,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
