# [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)

> A widget that detects gestures.
>
> Attempts to recognize gestures that correspond to its non-null callbacks.
>
> If this widget has a child, it defers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead.

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

## References

- [Taps, drags, and other gestures](https://docs.flutter.dev/ui/interactivity/gestures)