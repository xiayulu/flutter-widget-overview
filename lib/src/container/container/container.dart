import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          transform: Matrix4.rotationZ(0.1),
          child: const Text("Hello World"),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: const EdgeInsets.only(top: 16),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            border: Border.all(width: 2, color: Colors.red),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.amber,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ],
            // borderRadius: BorderRadius.circular(12),
          ),
          child: const Text("Hello World"),
        ),
      ],
    );
  }
}
