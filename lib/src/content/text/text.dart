// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

class ExText extends StatelessWidget {
  const ExText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.amber.shade100,
      child: _buildSelect(),
    );
  }

  Widget _buildBasic() {
    return Text(
      'Hello, Text Widget' * 3,
      // 'The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        color: Colors.green,
      ),
    );
  }

  Widget _buildHeight() {
    return Row(children: [
      Text(
        "中文",
        style: TextStyle(
          fontSize: 24,
          height: 1,
        ),
      ),
      Text(
        "123",
        style: TextStyle(
          fontSize: 24,
          // height: 1,
        ),
      ),
      Text(
        "English",
        style: TextStyle(
          fontSize: 24,
          // height: 1,
        ),
      ),
    ]);
  }

  Widget _buildSelect() {
    return SelectionArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Selectable text'),
          SelectionContainer.disabled(child: Text('Non-selectable text')),
          Text('Selectable text'),
        ],
      ),
    );
  }
}
