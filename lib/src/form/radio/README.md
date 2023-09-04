# [Radio](https://api.flutter.dev/flutter/material/Radio-class.html)

> A Material Design radio button.
>
> Used to select between a number of mutually exclusive values. When one radio button in a group is selected, the other radio buttons in the group cease to be selected. The values are of type `T`, the type parameter of the [Radio](https://api.flutter.dev/flutter/material/Radio-class.html) class. Enums are commonly used for this purpose.
>
> The radio button itself does not maintain any state. Instead, selecting the radio invokes the [onChanged](https://api.flutter.dev/flutter/material/Radio/onChanged.html) callback, passing [value](https://api.flutter.dev/flutter/material/Radio/value.html) as a parameter. If [groupValue](https://api.flutter.dev/flutter/material/Radio/groupValue.html) and [value](https://api.flutter.dev/flutter/material/Radio/value.html) match, this radio will be selected. Most widgets will respond to [onChanged](https://api.flutter.dev/flutter/material/Radio/onChanged.html) by calling [State.setState](https://api.flutter.dev/flutter/widgets/State/setState.html) to update the radio button's [groupValue](https://api.flutter.dev/flutter/material/Radio/groupValue.html).

## Example

```dart
```

