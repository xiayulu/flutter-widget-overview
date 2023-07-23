import 'package:flutter/material.dart';

class ExColumn extends StatelessWidget {
  const ExColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Widget 1'),
          onPressed: () => Navigator.pushNamed(context, '/second'),
        ),
        ElevatedButton(
          child: const Text('Widget 2'),
          onPressed: () => Navigator.pushNamed(context, '/third'),
        ),
        ElevatedButton(
          child: const Text('Widget 3'),
          onPressed: () => Navigator.pushNamed(context, '/fourth'),
        ),
      ],
    );
  }
}
