

# Interaction widgets

## Button

```dart
import 'package:flutter/material.dart';

class ExButton extends StatelessWidget {
  const ExButton({super.key});

  void onPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue.shade100;
      }
      return Colors.red.shade100;
    }

    return Column(
      children: [
        ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(getColor),
            ),
            child: const Text('Elevated')),
        FilledButton(onPressed: onPressed, child: const Text('Filled')),
        FilledButton.tonal(
            onPressed: onPressed, child: const Text('Filled Tonal')),
        OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
        TextButton(onPressed: onPressed, child: const Text('Text')),
      ],
    );
  }
}
```

## [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)

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

## AlertDialog

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

## SnackBar

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

## Dismissible

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

## InteractiveViewer

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

