# Text Widgets

## [Text](https://api.flutter.dev/flutter/widgets/Text-class.html)

> A run of text with a single style.
>
> - The [Text](https://api.flutter.dev/flutter/widgets/Text-class.html) widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.
>
> - The [style](https://api.flutter.dev/flutter/widgets/Text/style.html) argument is optional. When omitted, the text will use the style from the closest enclosing [DefaultTextStyle](https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html). If the given style's [TextStyle.inherit](https://api.flutter.dev/flutter/painting/TextStyle/inherit.html) property is true (the default), the given style will be merged with the closest enclosing [DefaultTextStyle](https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html). This merging behavior is useful, for example, to make the text bold while using the default font family and size.
> 

### Basic Example

```dart
Text(
  '你好, Flutter? 233333',
  // 'The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
  // textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(fontWeight: FontWeight.bold),
)
```

### Height

```dart
Row(children: [
  Text(
    "中文",
    style: TextStyle(
      fontSize: 24,
    ),
  ),
  Text(
    "123",
    style: TextStyle(
      fontSize: 24,
    ),
  ),
  Text(
    "English",
    style: TextStyle(
      fontSize: 24,
    ),
  ),
])
```

### Select

```dart
SelectionArea(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Selectable text'),
      SelectionContainer.disabled(child: Text('Non-selectable text')),
      Text('Selectable text'),
    ],
  ),
);
```

> Long press on amulator to select.

## [RichText](https://api.flutter.dev/flutter/widgets/RichText-class.html)

> - The [RichText](https://api.flutter.dev/flutter/widgets/RichText-class.html) widget displays text that uses multiple different styles. The text to display is described using a tree of [TextSpan](https://api.flutter.dev/flutter/painting/TextSpan-class.html) objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.
>
> - Text displayed in a [RichText](https://api.flutter.dev/flutter/widgets/RichText-class.html) widget must be explicitly styled. When picking which style to use, consider using [DefaultTextStyle.of](https://api.flutter.dev/flutter/widgets/DefaultTextStyle/of.html) the current [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.html) to provide defaults. For more details on how to style text in a [RichText](https://api.flutter.dev/flutter/widgets/RichText-class.html) widget, see the documentation for [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html).
>
> - Consider using the [Text](https://api.flutter.dev/flutter/widgets/Text-class.html) widget to integrate with the [DefaultTextStyle](https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html) automatically. When all the text uses the same style, the default constructor is less verbose. The [Text.rich](https://api.flutter.dev/flutter/widgets/Text/Text.rich.html) constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.

Example

```dart
import 'package:flutter/material.dart';

class ExRichText extends StatelessWidget {
  const ExRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildBasic(context),
    );
  }

  Widget _buildBasic(context) {
    return RichText(
      text: TextSpan(
        text: 'Hello ',
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 24, color: Colors.blue),
        children: const [
          TextSpan(
            text: 'bold',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(text: ' world!'),
        ],
      ),
    );
  }

  Widget _buildTextRich() {
    return Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: [
          TextSpan(
              text: ' beautiful ',
              style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
```

