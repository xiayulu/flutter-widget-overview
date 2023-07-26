import 'package:flutter/material.dart';

class ExDecoratedBox extends StatelessWidget {
  const ExDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        gradient: RadialGradient(
          center: Alignment(-0.5, -0.6),
          radius: 0.15,
          colors: [
            Color(0xFFEEEEEE),
            Color(0xFF111133),
          ],
          stops: [0.9, 1.0],
        ),
      ),
    );
  }
}
