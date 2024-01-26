import 'package:flutter/material.dart';

import '../../../../Core/constants.dart';

class AlertDialogToLogin extends StatelessWidget {
  final Widget widget;

  const AlertDialogToLogin({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: const Text(Constants.alertDialogTitle),
      content: widget,
      alignment: Alignment.center,
      actions: [
        TextButton(
          child: const Text(Constants.alertDialogCloseButtonText),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
