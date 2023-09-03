// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'dart:math';

class ExCustomScrollView extends StatelessWidget {
  const ExCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildScrollablePage();
  }

  Widget _buildTwoListView() {
    var listView = ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) => ListTile(title: Text('$index')),
    );
    return Column(
      children: [
        Expanded(child: listView),
        Divider(color: Colors.grey),
        Expanded(child: listView),
      ],
    );
  }

  Widget _buildTwoSliverList() {
    var listView = SliverFixedExtentList(
      itemExtent: 56,
      delegate: SliverChildBuilderDelegate(
        (_, index) => ListTile(title: Text('$index')),
        childCount: 10,
      ),
    );

    return CustomScrollView(
      slivers: [
        listView,
        listView,
      ],
    );
  }

  Widget _buildScrollablePage() {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.asset(
                "assets/image/food0.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Color(Random().nextInt(0xffffff)).withOpacity(0.5),
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
