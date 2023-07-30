import 'package:flutter/material.dart';

class ExCenter extends StatelessWidget {
  const ExCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(248, 187, 208, 1),
        width: 400,
        height: 400,
        child: const Center(child: Text('Center me')));
  }
}
