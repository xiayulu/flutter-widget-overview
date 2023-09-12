# [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html)

> A single fixed-height row that typically contains some text as well as a leading or trailing icon.
>
> A list tile contains one to three lines of text optionally flanked by icons or other widgets, such as check boxes. The icons (or other widgets) for the tile are defined with the [leading](https://api.flutter.dev/flutter/material/ListTile/leading.html) and [trailing](https://api.flutter.dev/flutter/material/ListTile/trailing.html) parameters. The first line of text is not optional and is specified with [title](https://api.flutter.dev/flutter/material/ListTile/title.html). The value of [subtitle](https://api.flutter.dev/flutter/material/ListTile/subtitle.html), which *is* optional, will occupy the space allocated for an additional line of text, or two lines if [isThreeLine](https://api.flutter.dev/flutter/material/ListTile/isThreeLine.html) is true. If [dense](https://api.flutter.dev/flutter/material/ListTile/dense.html) is true then the overall height of this tile and the size of the [DefaultTextStyle](https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html)s that wrap the [title](https://api.flutter.dev/flutter/material/ListTile/title.html) and [subtitle](https://api.flutter.dev/flutter/material/ListTile/subtitle.html) widget are reduced.
>
> It is the responsibility of the caller to ensure that [title](https://api.flutter.dev/flutter/material/ListTile/title.html) does not wrap, and to ensure that [subtitle](https://api.flutter.dev/flutter/material/ListTile/subtitle.html) doesn't wrap (if [isThreeLine](https://api.flutter.dev/flutter/material/ListTile/isThreeLine.html) is false) or wraps to two lines (if it is true).
>
> The heights of the [leading](https://api.flutter.dev/flutter/material/ListTile/leading.html) and [trailing](https://api.flutter.dev/flutter/material/ListTile/trailing.html) widgets are constrained according to the [Material spec](https://material.io/design/components/lists.html). An exception is made for one-line ListTiles for accessibility. Please see the example below to see how to adhere to both Material spec and accessibility requirements.
>
> The [leading](https://api.flutter.dev/flutter/material/ListTile/leading.html) and [trailing](https://api.flutter.dev/flutter/material/ListTile/trailing.html) widgets can expand as far as they wish horizontally, so ensure that they are properly constrained.
>
> List tiles are typically used in [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)s, or arranged in [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)s in [Drawer](https://api.flutter.dev/flutter/material/Drawer-class.html)s and [Card](https://api.flutter.dev/flutter/material/Card-class.html)s.

## Examples