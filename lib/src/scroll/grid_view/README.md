# [GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html)

> A scrollable, 2D array of widgets.
>
> The main axis direction of a grid is the direction in which it scrolls (the [scrollDirection](https://api.flutter.dev/flutter/widgets/ScrollView/scrollDirection.html)).
>
> The most commonly used grid layouts are [GridView.count](https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html), which creates a layout with a fixed number of tiles in the cross axis, and [GridView.extent](https://api.flutter.dev/flutter/widgets/GridView/GridView.extent.html), which creates a layout with tiles that have a maximum cross-axis extent. A custom [SliverGridDelegate](https://api.flutter.dev/flutter/rendering/SliverGridDelegate-class.html) can produce an arbitrary 2D arrangement of children, including arrangements that are unaligned or overlapping.
>
> To create a grid with a large (or infinite) number of children, use the [GridView.builder](https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html) constructor with either a [SliverGridDelegateWithFixedCrossAxisCount](https://api.flutter.dev/flutter/rendering/SliverGridDelegateWithFixedCrossAxisCount-class.html) or a [SliverGridDelegateWithMaxCrossAxisExtent](https://api.flutter.dev/flutter/rendering/SliverGridDelegateWithMaxCrossAxisExtent-class.html) for the [gridDelegate](https://api.flutter.dev/flutter/widgets/GridView/gridDelegate.html).
>
> To use a custom [SliverChildDelegate](https://api.flutter.dev/flutter/widgets/SliverChildDelegate-class.html), use [GridView.custom](https://api.flutter.dev/flutter/widgets/GridView/GridView.custom.html).

## SliverGridDelegateWithFixedCrossAxisCount

```dart
final icons = [
    Icon(Icons.ac_unit),
    Icon(Icons.airport_shuttle),
    Icon(Icons.all_inclusive),
    Icon(Icons.beach_access),
    Icon(Icons.cake),
    Icon(Icons.free_breakfast),
 ];

GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 16,
    crossAxisSpacing: 8,
    childAspectRatio: 2,
  ),
  itemCount: icons.length,
  itemBuilder: (context, index) => Container(
    alignment: Alignment.center,
    color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
    child: icons[index],
  ),
)
```

## SliverGridDelegateWithMaxCrossAxisExtent

```dart
Container(
  color: Color(0xFFf1f2f3),
  width: 300,
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 99,
      mainAxisSpacing: 16,
      childAspectRatio: 2,
    ),
    itemCount: icons.length,
    itemBuilder: (context, index) => Container(
      alignment: Alignment.center,
      color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
      child: icons[index],
    ),
  ),
)
```

