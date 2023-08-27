// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class ExLimitedBox extends StatelessWidget {
  const ExLimitedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return _withoutLimitedBox();
  }

  Widget _withLimitedBox() {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 150,
          maxWidth: 150,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Widget _withoutLimitedBox() {
    return Column(
      children: [
        Container(
          color: Colors.red,
        ),
      ],
    );
  }
}
