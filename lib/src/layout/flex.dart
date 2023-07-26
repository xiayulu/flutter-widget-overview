import 'package:flutter/material.dart';

class ExFlex extends StatelessWidget {
  const ExFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 150,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.lime,
          ),
          Container(
            width: 100,
            height: 10,
            color: Colors.purple,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
