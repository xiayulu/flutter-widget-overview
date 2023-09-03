# [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)

> A box in which a single widget can be scrolled.
>
> This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).
>
> It is also useful if you need to shrink-wrap in both axes (the main scrolling direction as well as the cross axis), as one might see in a dialog or pop-up menu. In that case, you might pair the [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) with a [ListBody](https://api.flutter.dev/flutter/widgets/ListBody-class.html) child.
>
> When you have a list of children and do not require cross-axis shrink-wrapping behavior, for example a scrolling list that is always the width of the screen, consider [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html), which is vastly more efficient than a [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) containing a [ListBody](https://api.flutter.dev/flutter/widgets/ListBody-class.html) or [Column](https://api.flutter.dev/flutter/widgets/Column-class.html) with many children.

## Using [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) with a [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)

```dart
class ExSingleChildScrollView extends StatelessWidget {
  const ExSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          4,
          (index) => Container(
            color: Color(math.Random().nextInt(0xffffff)).withOpacity(1),
            height: 255,
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
}
```

## Expanding content to fit the viewport

```dart
```

