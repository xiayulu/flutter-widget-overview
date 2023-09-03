# [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)

> A graphical icon widget drawn with a glyph from a font described in an [IconData](https://api.flutter.dev/flutter/widgets/IconData-class.html) such as material's predefined [IconData](https://api.flutter.dev/flutter/widgets/IconData-class.html)s in [Icons](https://api.flutter.dev/flutter/material/Icons-class.html).
>
> Icons are not interactive. For an interactive icon, consider material's [IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html).
>
> There must be an ambient [Directionality](https://api.flutter.dev/flutter/widgets/Directionality-class.html) widget when using [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html). Typically this is introduced automatically by the [WidgetsApp](https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html) or [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html).
>
> This widget assumes that the rendered icon is squared. Non-squared icons may render incorrectly.

## Example

```dart
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
  ],
)
```

## [fluentui_system_icons](https://pub.dev/packages/fluentui_system_icons)

```dart
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class MyFlutterWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
      // Use the FluentIcons + name of the icon you want
        icon: Icon(FluentIcons.access_time_24_regular),
        onPressed: () { print("Button pressed"); }
    );
  }
}
```

