import 'package:flutter/material.dart';

class ExFlex extends StatelessWidget {
  const ExFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 160,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 20,
            color: Colors.lime,
          ),
          Container(
            width: 100,
            height: 200,
            color: Colors.purple,
          ),
          Container(
            width: 100,
            height: 200,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
