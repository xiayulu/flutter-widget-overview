// ignore_for_file: prefer_const_constructors, unused_element

import "dart:math" as math;
import 'package:flutter/material.dart';

class ExSingleChildScrollView extends StatelessWidget {
  const ExSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildExpand(context);
  }

  Widget _buildWithColumn() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          12,
          (index) => Container(
            color: Color(math.Random().nextInt(0xffffff)).withOpacity(1),
            height: 72,
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExpand(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Container(
                      // A fixed-height child.
                      color: const Color(0xffeeee00), // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Container(
                        color: const Color(0xffee0000), // Red
                        height: 120.0,
                        alignment: Alignment.center,
                        child: const Text('Flexible Content'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
