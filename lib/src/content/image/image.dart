// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 500,
      // height: 300,
      color: Colors.blue.shade100,
      child: Image(
        image: NetworkImage(
          "https://cdn.pixabay.com/photo/2023/08/05/23/40/bird-8171927_1280.jpg",
        ),
        // image: AssetImage("assets/image/food1.png"),
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
