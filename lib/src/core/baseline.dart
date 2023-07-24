import 'package:flutter/material.dart';

class ExBaseLine extends StatelessWidget {
  const ExBaseLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 400,
        color: Colors.green,
        child: Baseline(
          baseline: 100,
          baselineType: TextBaseline.ideographic,
          child: Container(
            width: 350,
            height: 300,
            color: Colors.purple,
            child: const Text(
              "你好, Flutter",
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
          ),
        ),
      ),
    );
  }
}
