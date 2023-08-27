# Flex Layout

## [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html)

> A widget that displays its children in a one-dimensional array.
>
> - The [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html) widget does not scroll. If you have some widgets and want them to be able to scroll if there is insufficient room, consider using a [ListView](https://api.flutter-io.cn/flutter/widgets/ListView-class.html).
> - The [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html) widget does not allow its children to wrap across multiple horizontal or vertical runs. For a widget that allows its children to wrap, consider using the [Wrap](https://api.flutter-io.cn/flutter/widgets/Wrap-class.html) widget instead of [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html).
> - If you only have one child, then rather than using [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html), [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html), or [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html), consider using [Align](https://api.flutter-io.cn/flutter/widgets/Align-class.html) or [Center](https://api.flutter-io.cn/flutter/widgets/Center-class.html) to position the child.
> - https://css-tricks.com/snippets/css/a-guide-to-flexbox/

```dart
import 'package:flutter/material.dart';

class ExFlex extends StatelessWidget {
  const ExFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 150,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.lime,
          ),
          Container(
            width: 100,
            height: 10,
            color: Colors.purple,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
```

## [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html)

> The **Row** widget takes a list of widgets and arranges them horizontally. You will likely use this widget a lot when making layouts in your code.
>

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

## [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html)

> The **Column** widget allows you to arrange a list of widgets vertically, similar to how the **Row** widget aligns them horizontally.
>

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

## [Expanded](https://api.flutter-io.cn/flutter/widgets/Expanded-class.html)

> A widget that expands a child of a [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html), [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html), or [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html) so that the child fills the available space.
>
> Using an [Expanded](https://api.flutter-io.cn/flutter/widgets/Expanded-class.html) widget makes a child of a [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html), [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html), or [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html) expand to fill the available space along the main axis (e.g., horizontally for a [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html) or vertically for a [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html)). If multiple children are expanded, the available space is divided among them according to the [flex](https://api.flutter-io.cn/flutter/widgets/Flexible/flex.html) factor.
>
> An [Expanded](https://api.flutter-io.cn/flutter/widgets/Expanded-class.html) widget must be a descendant of a [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html), [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html), or [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html), and the path from the [Expanded](https://api.flutter-io.cn/flutter/widgets/Expanded-class.html) widget to its enclosing [Row](https://api.flutter-io.cn/flutter/widgets/Row-class.html), [Column](https://api.flutter-io.cn/flutter/widgets/Column-class.html), or [Flex](https://api.flutter-io.cn/flutter/widgets/Flex-class.html) must contain only [StatelessWidget](https://api.flutter-io.cn/flutter/widgets/StatelessWidget-class.html)s or [StatefulWidget](https://api.flutter-io.cn/flutter/widgets/StatefulWidget-class.html)s (not other kinds of widgets, like [RenderObjectWidget](https://api.flutter-io.cn/flutter/widgets/RenderObjectWidget-class.html)s).

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

## References

- [A Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

