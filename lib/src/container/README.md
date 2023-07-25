

# Container widgets

## [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)

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

## Center

This widget centers a child within itself.

```dart
Center( child: Text('Center me')),
```

## Align

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

## SizedBox

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

## BaseLine

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

## LimitedBox

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



## References

- [Flutter widgets cheat sheet](https://blog.codemagic.io/flutter-widget-cheat-sheet/)
