// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExButton extends StatelessWidget {
  const ExButton({super.key});

  void onPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue.shade100;
      }
      return Colors.red.shade100;
    }

    return Column(
      children: [
        ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(getColor),
            ),
            child: const Text('Elevated')),
        FilledButton(onPressed: onPressed, child: const Text('Filled')),
        FilledButton.tonal(
            onPressed: onPressed, child: const Text('Filled Tonal')),
        OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
        TextButton(onPressed: onPressed, child: const Text('Text')),
        IconButton(onPressed: onPressed, icon: Icon(Icons.headphones)),
      ],
    );
  }
}
