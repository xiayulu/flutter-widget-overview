# Scrollable widgets

## ListView

**ListView Builder** is the most used scrollable widget. It displays its children in the scroll direction one after the other. For example, if you have a long list that is dynamically created, you can use `Listview.builder` to display it.

```dart
import 'package:flutter/material.dart';

class ExListView extends StatelessWidget {
  const ExListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber,
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        });
  }
}
```

## SingleChildScrollView

The **SingleChildScrollView** widget will come in handy if you have a list of items that you initially didn’t intend for the user to scroll through, but the requirements change upon implementation. In this case, you can quickly wrap the parent widget with a `SingleChildScrollView` to make it scrollable.

```dart
import 'package:flutter/material.dart';

class ExSingleScrollView extends StatelessWidget {
  const ExSingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.red,
            height: 300.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.blue,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.green,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          Container(
            color: Colors.purple,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
        ],
      ),
    );
  }
}
```

## CustomScrollView

A ScrollView that creates custom scroll effects using slivers.

A CustomScrollView lets you supply slivers directly to create various scrolling effects, such as lists, grids, and expanding headers. For example, to create a scroll view that contains an expanding app bar followed by a list and a grid, use a list of three slivers: SliverAppBar, SliverList, and SliverGrid.

> When to use CustomScrollView and Slivers?
>
> 1. to create special effects
> 2. to create elastic effects
> 3. for chat list or messages
> 4. for unlimited scrolling
>
> Different kinds of Slivers
>
> 1.  SliverAppBar
> 2.  SliverPersistentHeader
> 3.  SliverFixedExtentList
> 4.  SliverList
> 5.  SliverGrid
> 6.  SliverToBoxAdapter
> 7.  SliverPadding


```dart
import 'package:flutter/material.dart';
import 'dart:math';

class ExCustomScrollView extends StatelessWidget {
  const ExCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false, // close defaut return icon
          expandedHeight: 280,
          pinned: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back),
              Stack(
                children: [
                  const Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ],
          ),
          toolbarHeight: 80,
          bottom: PreferredSize(
            preferredSize: Size(double.maxFinite, 20),
            child: Container(
              color: Colors.white,
              child: Text(
                "Sliver AppBar bottom",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          backgroundColor: Colors.amber,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/image/food0.png",
                width: double.maxFinite, fit: BoxFit.cover),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: List.generate(
              10,
              (index) => Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                    color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(1.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
```

https://www.dbestech.com/tutorials/flutter-customscrollview-and-slivers