import 'package:flutter/material.dart';

class ExClipRect extends StatelessWidget {
  const ExClipRect({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 0.4,
          heightFactor: 1.0,
          child: Image.network(
              'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
        ),
      ),
    );
  }
}
