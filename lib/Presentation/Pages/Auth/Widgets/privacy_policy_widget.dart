import 'package:flutter/material.dart';

import '../../../../Core/Controllers/user_controller.dart';
import '../../../../Core/constants.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: UserController.goToPrivacyPolicy,
      child: Text(
        Constants.privacyPolicy,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
