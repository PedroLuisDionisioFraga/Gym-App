import 'package:flutter/material.dart';

import '../../../../../Core/constants.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          Constants.forgotPassword,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.normal,
              ),
        ),
        TextButton(
          onPressed: () {},
          // TODO: Reduce the size of TextButton to the size of the text
          child: Text(
            Constants.clickHere,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ],
    );
  }
}
