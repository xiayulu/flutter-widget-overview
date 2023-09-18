import 'package:flutter/material.dart';

class ExRow extends StatelessWidget {
  const ExRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.pink.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
