import 'package:flutter/material.dart';

import '../../../../../Core/Controllers/user_controller.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({super.key});

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool isObscure = true;

  void changeObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  void initState() {
    super.initState();
    debugPrint('Password.initState');
    UserController.passwordController = TextEditingController();
  }

  @override
  void dispose() {
    UserController.passwordController!.dispose();
    debugPrint('Password.dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: UserController.passwordController,
      textInputAction: TextInputAction.done,
      obscureText: isObscure,
      onFieldSubmitted: (_) {
        UserController.validateLogin(context);
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
        ),
        suffixIcon: IconButton(
          icon: isObscure ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          onPressed: changeObscure,
        ),
      ),
    );
  }
}
