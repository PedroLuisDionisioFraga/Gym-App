import 'package:flutter/material.dart';

import '../../../../../Core/constants.dart';

class RememberMeWidget extends StatefulWidget {
  const RememberMeWidget({super.key});

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  /// The value of a switch widget.
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    /// Callback function that is called when the switch is changed.
    /// Updates the state of the switchValue variable.
    void onSwitchChanged(bool newValue) {
      setState(() {
        switchValue = newValue;
      });
    }

    return Row(
      children: [
        Switch(
          value: switchValue,
          onChanged: onSwitchChanged,
          thumbIcon: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.selected)
                ? const Icon(
                    Icons.check,
                    color: Colors.blueGrey,
                  )
                : const Icon(
                    Icons.close,
                    color: Colors.blueGrey,
                  ),
          ),
        ),
        Text(
          Constants.rememberMe,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 15,
              ),
        ),
      ],
    );
  }
}
