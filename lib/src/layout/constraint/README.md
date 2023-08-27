# [Constraint](https://docs.flutter.dev/ui/layout/constraints)

## The Rule

Flutter layout is very different from HTML layout  and we should memorize the following rule:

**Rule1: Constraints go down. Sizes go up. Parent sets position.**

> - A widget gets its own **constraints** from its **parent**. A *constraint* is just a set of 4 doubles: a minimum and maximum width, and a minimum and maximum height.
> - Then the widget goes through its own list of **children**. One by one, the widget tells its children what their **constraints** are (which can be different for each child), and then asks each child what size it wants to be.
> - Then, the widget positions its **children** (horizontally in the `x` axis, and vertically in the `y` axis), one by one.
> - And, finally, the widget tells its parent about its own **size** (within the original constraints, of course).

$$
minWidth \le Size.width \le maxWidth\\
minHeight \le Size.height \le maxHeight
$$

[BoxConstraints](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html)

```dart
const BoxConstraints({
  this.minWidth = 0.0,
  this.maxWidth = double.infinity,
  this.minHeight = 0.0,
  this.maxHeight = double.infinity,
});
```

[ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html)

```dart
ConstrainedBox(
  constraints: const BoxConstraints.expand(),
  child: const Card(child: Text('Hello World!')),
)
```

## Basic Example

```dart
ConstrainedBox(
  constraints: BoxConstraints(minHeight: 100.0),
  child: Container(
    height: 50.0,
    width: 300,
    child: _redBox,
  ),
)
```

**Rule2: The min side take the max value, The max side take the mix value.**

## Multi constraint

```dart
ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 100.0,
    maxWidth: 300,
    minHeight: 0,
    maxHeight: 50.0,
  ),
  child: ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 50.0,
      maxWidth: 200,
      minHeight: 100,
      maxHeight: 100.0,
    ),
    child: _redBox,
  ),
)
```

## [UnconstrainedBox](https://api.flutter.dev/flutter/widgets/UnconstrainedBox-class.html)

UnconstrainedBox will cut off constraint transfer path.

```dart
ConstrainedBox(
  constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
  child: UnconstrainedBox(
    child: ConstrainedBox(
      constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
      child: _redBox,
    ),
  ),
)
```

## Exercise

1. What's the size of `_redBox`?

```dart
ConstrainedBox(
  constraints: BoxConstraints(minHeight: 100.0, maxHeight: 120),
  child: Container(
    height: 50.0,
    width: 300,
    child: _redBox,
  ),
)
```

2. How to set the width of `_redBox` to `60` when you are not allowed to change `constraints`?

```dart
ConstrainedBox(
  constraints: BoxConstraints(minHeight: 100.0, maxHeight: 120),
  child: Container(
    height: 50.0,
    width: 300,
    child: _redBox,
  ),
)
```

