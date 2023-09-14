import 'package:flutter/material.dart';

class ExAlign extends StatelessWidget {
  const ExAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      color: Colors.blue.shade50,
      child: const Align(
        alignment: Alignment.topRight,
        widthFactor: 0.5,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
