// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ExGridView extends StatelessWidget {
  ExGridView({super.key});

  final icons = [
    Icon(Icons.ac_unit),
    Icon(Icons.airport_shuttle),
    Icon(Icons.all_inclusive),
    Icon(Icons.beach_access),
    Icon(Icons.cake),
    Icon(Icons.free_breakfast),
  ];

  @override
  Widget build(BuildContext context) {
    return _buildDelegateExtent();
  }

  Widget _buildDelegateCount() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
        childAspectRatio: 2,
      ),
      itemCount: icons.length,
      itemBuilder: (context, index) => Container(
        alignment: Alignment.center,
        color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
        child: icons[index],
      ),
    );
  }

  Widget _buildDelegateExtent() {
    return Container(
      color: Color(0xFFf1f2f3),
      width: 300,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 99,
          mainAxisSpacing: 16,
          crossAxisSpacing: 8,
          childAspectRatio: 2,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
          child: icons[index],
        ),
      ),
    );
  }
}
