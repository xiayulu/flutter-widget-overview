import 'package:flutter/material.dart';

class ExDecoratedBox extends StatelessWidget {
  const ExDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0.5, -0.6),
          radius: 0.15,
          colors: [
            Color(0xFFEEEEEE),
            Color(0xFF111133),
          ],
          stops: <double>[0.9, 1.0],
        ),
      ),
    );
  }
}
