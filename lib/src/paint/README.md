# Paint widgets

## InkWell

A rectangular area of a [Material](https://api.flutter.dev/flutter/material/Material-class.html) that responds to touch.

For a variant of this widget that does not clip splashes, see [InkResponse](https://api.flutter.dev/flutter/material/InkResponse-class.html).

The following diagram shows how an [InkWell](https://api.flutter.dev/flutter/material/InkWell-class.html) looks when tapped, when using default values.

![The highlight is a rectangle the size of the box.](https://flutter.github.io/assets-for-api-docs/assets/material/ink_well.png)

The [InkWell](https://api.flutter.dev/flutter/material/InkWell-class.html) widget must have a [Material](https://api.flutter.dev/flutter/material/Material-class.html) widget as an ancestor. The [Material](https://api.flutter.dev/flutter/material/Material-class.html) widget is where the ink reactions are actually painted. This matches the Material Design premise wherein the [Material](https://api.flutter.dev/flutter/material/Material-class.html) is what is actually reacting to touches by spreading ink.

If a Widget uses this class directly, it should include the following line at the top of its build function to call [debugCheckHasMaterial](https://api.flutter.dev/flutter/material/debugCheckHasMaterial.html):

```dart
assert(debugCheckHasMaterial(context));
```

Example

```dart
Widget build(BuildContext context) {
  Image img = Image.network(
      'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80');
  return Material(
    child: Ink.image(
      fit: BoxFit.fill,
      width: 300,
      height: 300,
      image: img.image,
      child: InkWell(
        onTap: () {
          print('image');
        },
        child: const Align(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'PUFFIN',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
```

## [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html)

A widget that paints a [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) either before or after its child paints.

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

## [ClipRect](https://api.flutter.dev/flutter/widgets/ClipRect-class.html)

A widget that clips its child using a rectangle.

```dart
import 'package:flutter/material.dart';

class ExDecoratedBox extends StatelessWidget {
  const ExDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        gradient: RadialGradient(
          center: Alignment(-0.5, -0.6),
          radius: 0.15,
          colors: [
            Color(0xFFEEEEEE),
            Color(0xFF111133),
          ],
          stops: [0.9, 1.0],
        ),
      ),
    );
  }
}
```

## [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html)

A widget that clips its child using a path.

```dart
import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ExClipPath extends StatelessWidget {
  const ExClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        color: Colors.red,
      ),
      clipper: CustomClipPath(),
    );
  }
}
```

