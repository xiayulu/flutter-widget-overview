import 'package:flutter/material.dart';

class ExAlign extends StatelessWidget {
  const ExAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue.shade50,
      child: const Align(
        alignment: Alignment.center,
        widthFactor: 0.5,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
