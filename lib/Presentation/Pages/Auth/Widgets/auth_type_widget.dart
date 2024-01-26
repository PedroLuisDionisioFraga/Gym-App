import 'package:flutter/material.dart';

class AuthTypeWidget extends StatelessWidget {
  final String authType;

  const AuthTypeWidget({
    super.key,
    required this.authType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height * 0.1,
        bottom: MediaQuery.sizeOf(context).height * 0.05,
      ),
      child: Text(
        authType,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
