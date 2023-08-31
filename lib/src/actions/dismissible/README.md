# [Dismissible](https://api.flutter.dev/flutter/widgets/Dismissible-class.html)

> A widget that can be dismissed by dragging in the indicated [direction](https://api.flutter.dev/flutter/widgets/Dismissible/direction.html).
>
> Dragging or flinging this widget in the [DismissDirection](https://api.flutter.dev/flutter/widgets/DismissDirection.html) causes the child to slide out of view. Following the slide animation, if [resizeDuration](https://api.flutter.dev/flutter/widgets/Dismissible/resizeDuration.html) is non-null, the Dismissible widget animates its height (or width, whichever is perpendicular to the dismiss direction) to zero over the [resizeDuration](https://api.flutter.dev/flutter/widgets/Dismissible/resizeDuration.html).

**Example**

```dart
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

