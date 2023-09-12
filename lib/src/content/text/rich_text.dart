// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExRichText extends StatelessWidget {
  const ExRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildBasic(context),
    );
  }

  Widget _buildBasic(context) {
    return RichText(
      text: TextSpan(
        text: 'Hello ',
        style: TextStyle(fontSize: 24, color: Colors.red),
        // DefaultTextStyle.of(context)
        //     .style
        //     .copyWith(fontSize: 24, color: Colors.blue),
        children: const [
          TextSpan(
            text: 'bold',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(text: ' world!'),
        ],
      ),
    );
  }

  Widget _buildTextRich() {
    return Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: [
          TextSpan(
              text: ' beautiful ',
              style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
