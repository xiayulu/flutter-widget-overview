import 'package:flutter/material.dart';

class ExGestureDetector extends StatelessWidget {
  const ExGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text('Tap'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      // The custom button
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text('My Button'),
      ),
    );
  }
}
