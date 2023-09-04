# [CheckBox](https://api.flutter.dev/flutter/material/Checkbox-class.html)

> A Material Design checkbox.
>
> The checkbox itself does not maintain any state. Instead, when the state of the checkbox changes, the widget calls the [onChanged](https://api.flutter.dev/flutter/material/Checkbox/onChanged.html) callback. Most widgets that use a checkbox will listen for the [onChanged](https://api.flutter.dev/flutter/material/Checkbox/onChanged.html) callback and rebuild the checkbox with a new [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) to update the visual appearance of the checkbox.
>
> The checkbox can optionally display three values - true, false, and null - if [tristate](https://api.flutter.dev/flutter/material/Checkbox/tristate.html) is true. When [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) is null a dash is displayed. By default [tristate](https://api.flutter.dev/flutter/material/Checkbox/tristate.html) is false and the checkbox's [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) must be true or false.
>
> Requires one of its ancestors to be a [Material](https://api.flutter.dev/flutter/material/Material-class.html) widget.

## Example

```dart
class ExCheckbox extends StatefulWidget {
  const ExCheckbox({super.key});

  @override
  State<ExCheckbox> createState() => _ExCheckboxState();
}

class _ExCheckboxState extends State<ExCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
```

