# [LimitedBox](https://api.flutter.dev/flutter/widgets/LimitedBox-class.html)

> A box that limits its size only when it's unconstrained.
>
> If this widget's maximum width is unconstrained then its child's width is limited to [maxWidth](https://api.flutter.dev/flutter/widgets/LimitedBox/maxWidth.html). Similarly, if this widget's maximum height is unconstrained then its child's height is limited to [maxHeight](https://api.flutter.dev/flutter/widgets/LimitedBox/maxHeight.html).
>
> This has the effect of giving the child a natural dimension in unbounded environments. For example, by providing a [maxHeight](https://api.flutter.dev/flutter/widgets/LimitedBox/maxHeight.html) to a widget that normally tries to be as big as possible, the widget will normally size itself to fit its parent, but when placed in a vertical list, it will take on the given height.
>
> This is useful when composing widgets that normally try to match their parents' size, so that they behave reasonably in lists (which are unbounded).