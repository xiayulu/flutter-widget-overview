# Container Widgets

## [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)

> A convenience widget that combines common painting, positioning, and sizing widgets.
>
> A container first surrounds the child with [padding](https://api.flutter.dev/flutter/widgets/Container/padding.html) (inflated by any borders present in the [decoration](https://api.flutter.dev/flutter/widgets/Container/decoration.html)) and then applies additional [constraints](https://api.flutter.dev/flutter/widgets/Container/constraints.html) to the padded extent (incorporating the `width` and `height` as constraints, if either is non-null). The container is then surrounded by additional empty space described from the [margin](https://api.flutter.dev/flutter/widgets/Container/margin.html).
>
> During painting, the container first applies the given [transform](https://api.flutter.dev/flutter/widgets/Container/transform.html), then paints the [decoration](https://api.flutter.dev/flutter/widgets/Container/decoration.html) to fill the padded extent, then it paints the child, and finally paints the [foregroundDecoration](https://api.flutter.dev/flutter/widgets/Container/foregroundDecoration.html), also filling the padded extent.
>
> Containers with no children try to be as big as possible unless the incoming constraints are unbounded, in which case they try to be as small as possible. Containers with children size themselves to their children. The `width`, `height`, and [constraints](https://api.flutter.dev/flutter/widgets/Container/constraints.html) arguments to the constructor override this.
>
> By default, containers return false for all hit tests. If the [color](https://api.flutter.dev/flutter/widgets/Container/color.html) property is specified, the hit testing is handled by [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html), which always returns true. If the [decoration](https://api.flutter.dev/flutter/widgets/Container/decoration.html) or [foregroundDecoration](https://api.flutter.dev/flutter/widgets/Container/foregroundDecoration.html) properties are specified, hit testing is handled by [Decoration.hitTest](https://api.flutter.dev/flutter/painting/Decoration/hitTest.html).

**Example**

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

## [Center](https://api.flutter.dev/flutter/widgets/Center-class.html)

> This widget centers a child within itself.

```dart
Center( child: Text('Center me')),
```

## [Align](https://api.flutter.dev/flutter/widgets/Align-class.html)

> A widget that aligns its child within itself and optionally sizes itself based on the child's size.
>

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

## [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)

> Use **SizedBox** to give a specific size to its child widget or provide some white space between widgets.
>

```dart
SizedBox(
  width: 200.0,
  height: 200.0,
  child: Container(
    color: Colors.pink,
  ),
)
```

## [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html)

> A widget that paints a [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) either before or after its child paints.
>
> [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) insets its child by the widths of the borders; this widget does not.
>
> Commonly used with [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html).
>
> The [child](https://api.flutter.dev/flutter/widgets/SingleChildRenderObjectWidget/child.html) is not clipped. To clip a child to the shape of a particular [ShapeDecoration](https://api.flutter.dev/flutter/painting/ShapeDecoration-class.html), consider using a [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) widget.

```dart
const DecoratedBox(
  decoration: BoxDecoration(
    gradient: RadialGradient(
      center: Alignment(-0.5, -0.6),
      radius: 0.15,
      colors: <Color>[
        Color(0xFFEEEEEE),
        Color(0xFF111133),
      ],
      stops: <double>[0.9, 1.0],
    ),
  ),
)
```

