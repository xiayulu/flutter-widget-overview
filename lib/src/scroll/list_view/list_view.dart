// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:math';

import 'package:flutter/material.dart';

class ExListView extends StatelessWidget {
  const ExListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildSeparated();
  }

  Widget _buildBasic() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 40,
      primary: true,
      // itemExtent:50,
      // prototypeItem: Container(
      //   height: 100,
      //   color: Color(Random().nextInt(0xffffff)).withOpacity(1),
      //   child: Center(
      //     child: Text('Entry 6'),
      //   ),
      // ),
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
      reverse: true,
      primary: true,
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
      separatorBuilder: (context, index) => Container(
        height: 12,
        color: Colors.red,
      ),
    );
  }
}
