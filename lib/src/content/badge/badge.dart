// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExBadge extends StatelessWidget {
  const ExBadge({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Container(
      alignment: Alignment.center,
      child: Badge(
        label: Text("99+"),
        // smallSize: 12,
        child: Icon(
          Icons.message,
          size: 32,
        ),
      ),
    );
  }
}
