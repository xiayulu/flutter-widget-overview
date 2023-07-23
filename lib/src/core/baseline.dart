import 'package:flutter/material.dart';

class ExBaseLine extends StatelessWidget {
  const ExBaseLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
        child: Baseline(
          baseline: 50,
          baselineType: TextBaseline.ideographic,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
