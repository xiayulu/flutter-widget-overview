import 'package:flutter/material.dart';

class ExSingleScrollView extends StatelessWidget {
  const ExSingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.red,
            height: 300.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.blue,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.green,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.purple,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
        ],
      ),
    );
  }
}
