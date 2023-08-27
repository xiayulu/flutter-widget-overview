import 'package:flutter/material.dart';

class ExWrap extends StatelessWidget {
  const ExWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade50,
      height: 400,
      width: 800,
      child: _buildWrap(),
    );
  }

  Widget _buildWrap() {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 12.0, // gap between lines
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        Container(
          color: Colors.red,
          height: 100,
          width: 50,
        ),
        Container(
          color: Colors.blue,
          height: 150,
          width: 150,
        ),
        Container(
          color: Colors.pink,
          height: 200,
          width: 100,
        ),
        Container(
          color: Colors.amber,
          height: 100,
          width: 200,
        ),
        Container(
          color: Colors.green,
          height: 50,
          width: 150,
        ),
      ],
    );
  }
}
