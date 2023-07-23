import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.pink.shade100, borderRadius: BorderRadius.circular(12)),
      child: const Text("Hello World"),
    );
  }
}
