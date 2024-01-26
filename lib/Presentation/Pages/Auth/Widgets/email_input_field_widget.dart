import 'package:flutter/material.dart';

import '../../../../../Core/Controllers/user_controller.dart';

class UsernameInputWidget extends StatefulWidget {
  const UsernameInputWidget({super.key});

  @override
  State<UsernameInputWidget> createState() => _UsernameInputWidgetState();
}

class _UsernameInputWidgetState extends State<UsernameInputWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint('Username.initState');
    UserController.usernameController = TextEditingController();
  }

  @override
  void dispose() {
    UserController.usernameController!.dispose();
    debugPrint('Username.dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: UserController.usernameController,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.email_rounded,
        ),
      ),
    );
  }
}
