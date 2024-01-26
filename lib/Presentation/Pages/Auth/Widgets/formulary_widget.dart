import 'package:flutter/material.dart';

import '../../../../Core/constants.dart';
import 'input_label_widget.dart';
import 'password_input_field_widget.dart';
import 'email_input_field_widget.dart';

class FormularyWidget extends StatelessWidget {
  const FormularyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InputLabelWidget(text: Constants.username),
        UsernameInputWidget(),
        SizedBox(height: 15),
        InputLabelWidget(text: Constants.password),
        PasswordInputWidget(),
      ],
    );
  }
}
