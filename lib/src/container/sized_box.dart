import 'package:flutter/material.dart';

class ExSizedBox extends StatelessWidget {
  const ExSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      height: 200.0,
      child: Container(
        color: Colors.pink,
      ),
    );
  }
}
