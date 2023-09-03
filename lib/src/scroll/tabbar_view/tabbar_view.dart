// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExTabBarView extends StatelessWidget {
  const ExTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ["StarCraft 2", "LoL", "GTA5"];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Colors.black87,
            // indicator: BoxDecoration(
            //   color: Colors.amber.shade100
            // ),
            indicatorColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList(),
        ),
      ),
    );
  }
}
