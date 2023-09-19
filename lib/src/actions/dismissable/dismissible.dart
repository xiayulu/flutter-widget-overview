import 'package:flutter/material.dart';

class ExDismissible extends StatefulWidget {
  const ExDismissible({super.key});

  @override
  State<ExDismissible> createState() => _ExDismissibleState();
}

class _ExDismissibleState extends State<ExDismissible> {
  List<String> items = <String>[
    'banana',
    'strawberry',
    'apple',
    'orange',
    'cat',
    'bobcat',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, index) {
        return Dismissible(
          background: Container(
            color: Colors.green,
          ),
          direction: DismissDirection.endToStart,
          key: Key(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
        );
      },
    );
  }
}
