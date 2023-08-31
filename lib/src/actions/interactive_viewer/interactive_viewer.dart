import 'package:flutter/material.dart';

class ExInteractiveViewer extends StatelessWidget {
  const ExInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(20.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.blue, Colors.yellow],
            stops: <double>[0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
