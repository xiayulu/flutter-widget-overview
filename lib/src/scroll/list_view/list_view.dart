// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:math';

import 'package:flutter/material.dart';

class ExListView extends StatelessWidget {
  const ExListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBasic();
  }

  Widget _buildBasic() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 20,
      // itemExtent:100,
      prototypeItem: Container(
        height: 100,
        color: Color(Random().nextInt(0xffffff)).withOpacity(1),
        child: Center(
          child: Text('Entry 6'),
        ),
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Color(Random().nextInt(0xffffff)).withOpacity(1),
          child: Center(
            child: Text('Entry $index'),
          ),
        );
      },
    );
  }

  Widget _buildSeparated() {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Color(Random().nextInt(0xffffff)).withOpacity(1),
          child: Center(
            child: Text('Entry $index'),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.red,
      ),
    );
  }
}
