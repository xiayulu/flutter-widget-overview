# Flutter Core Widgets

## Interaction widgets

### [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)

- `onTap` include:
```dart
onTapDown
onTapUp
onTap
onTapCancel
```

- `onLongPress`
- `onDoubleTap`
- `onVerticalDrag`, include:
```dart
onVerticalDragStart
onVerticalDragUpdate
onVerticalDragEnd
```
- `onHorizontalDrag`, include:
```dart
onHorizontalDragStart
onHorizontalDragUpdate
onHorizontalDragEnd
```
- `onPan` = `h+v`, conflict with `h or v`, include:
```dart
onPanStart
onPanUpdate
onPanEnd
```
**Example**

```dart
GestureDetector(
  onTap: () {
    const snackBar = SnackBar(content: Text('Tap'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  },
  // The custom button
  child: Container(
    padding: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: const Text('My Button'),
  ),
)
```

- https://juejin.cn/post/7108352185070518285

### AlertDialog

```dart
Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cheat Sheet'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
```

### SnackBar

```dart
import 'package:flutter/material.dart';

class ExSnackbar extends StatelessWidget {
  const ExSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                const Text('data');
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show snackbar'),
      ),
    );
  }
}
```

### Dismissible

You can use a **Dismissible** widget to remove or dismiss items from a list. You can swipe left or right to remove any item.

```dart
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
```

### InteractiveViewer

If you have a big picture that doesn’t fit on the screen, you can use the **InteractiveViewer** widget to enable it to fit on the screen by allowing the user to zoom in and out of the picture.

```dart
import 'package:flutter/material.dart';

class ExInteractiveViewer extends StatelessWidget {
  const ExInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(20.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.blue, Colors.yellow],
            stops: <double>[0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
```

## Alignment and layout widgets

### [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)

A convenience widget that combines common painting, positioning, and sizing widgets.

```dart
import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.pink.shade100, borderRadius: BorderRadius.circular(12)),
      child: const Text("Hello World"),
    );
  }
}
```

### Row

The **Row** widget takes a list of widgets and arranges them horizontally. You will likely use this widget a lot when making layouts in your code.

```dart
Row(
  children: [
    ElevatedButton(
      child: const Text('Widget 1'),
      onPressed: () => Navigator.pushNamed(context, '/second'),
    ),
    ElevatedButton(
      child: const Text('Widget 2'),
      onPressed: () => Navigator.pushNamed(context, '/third'),
    ),
    ElevatedButton(
      child: const Text('Widget 3'),
      onPressed: () => Navigator.pushNamed(context, '/fourth'),
    ),
  ],
);
```

### Column

The **Column** widget allows you to arrange a list of widgets vertically, similar to how the **Row** widget aligns them horizontally.

```dart
Column(
  children: [
    ElevatedButton(
      child: const Text('Widget 1'),
      onPressed: () => Navigator.pushNamed(context, '/second'),
    ),
    ElevatedButton(
      child: const Text('Widget 2'),
      onPressed: () => Navigator.pushNamed(context, '/third'),
    ),
    ElevatedButton(
      child: const Text('Widget 3'),
      onPressed: () => Navigator.pushNamed(context, '/fourth'),
    ),
  ],
);
```

### Expanded

The **Expanded** widget expands the child of a **Row** or **Column** to fill any available space.

For example, you can use it to build a UI that fills the screen with just three containers or pictures. Theoretically, we can just specify their heights, but remember that there are different screen sizes for different devices, including tablets such as iPad devices. The expanded widget can help you create a more responsive design that can easily fit all screen sizes.

```dart
Row(
  children: <Widget>[
    Container(
      color: Colors.blue,
      height: 100,
      width: 50,
    ),
    Expanded(
      child: Container(
        color: Colors.amber,
        height: 100,
      ),
    ),
    Container(
      color: Colors.green,
      height: 100,
      width: 50,
    ),
  ],
)
```

> **Tips**
>
> If you do not need a child, use `Spacer`.

### Center

This widget centers a child within itself.

```dart
Center( child: Text('Center me')),
```

### Align

The **Align** widget aligns its child within itself. This widget is very flexible and can take the size of its child.

The child can be placed at different points within its parent widget using the `alignment property`, as shown below:

```dart
Container(
  height: 120.0,
  width: 120.0,
  color: Colors.blue[50],
  child: const Align(
    alignment: Alignment.topRight,
    child: FlutterLogo(
      size: 60,
    ),
  ),
)
```

### SizedBox

Use **SizedBox** to give a specific size to its child widget or provide some white space between widgets.

```dart
SizedBox(
  width: 200.0,
  height: 200.0,
  child: Container(
    color: Colors.pink,
  ),
)
```

### BaseLine

Use the **BaseLine** widget to position the child widget according to the starting point of the parent widget.

```dart
Center(
  child: Container(
    width: 400,
    height: 400,
    color: Colors.green,
    child: Baseline(
      baseline: 100,
      baselineType: TextBaseline.ideographic,
      child: Container(
        width: 350,
        height: 300,
        color: Colors.purple,
        child: const Text(
          "你好, Flutter",
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
      ),
    ),
  ),
)
```

![A diagram showing the line terms used in typography, with the baseline highlighted.](assets/2560px-Typography_Line_Terms.svg.png)

### LimitedBox

Use this widget to assign a default size to a list of widgets that are unconstrained(ListView, Column, Row). 

```dart
Widget _withLimitedBox() {
  return Column(
    children: [
      LimitedBox(
        maxHeight: 150,
        maxWidth: 150,
        child: Container(
          color: Colors.red,
        ),
      ),
    ],
  );
}

Widget _withoutLimitedBox() {
  return Column(
    children: [
      Container(
        color: Colors.red,
      ),
    ],
  );
}
```

## Scrollable widgets

### ListView Builder

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

### SingleChildScrollView

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
### CustomScrollView

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
> 6. SliverToBoxAdapter
> 7. SliverPadding


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

## References

- [Flutter widgets cheat sheet](https://blog.codemagic.io/flutter-widget-cheat-sheet/)
