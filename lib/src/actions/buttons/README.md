# Buttons

## Button

```dart
import 'package:flutter/material.dart';

class ExButton extends StatelessWidget {
  const ExButton({super.key});

  void onPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue.shade100;
      }
      return Colors.red.shade100;
    }

    return Column(
      children: [
        ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(getColor),
            ),
            child: const Text('Elevated')),
        FilledButton(onPressed: onPressed, child: const Text('Filled')),
        FilledButton.tonal(
            onPressed: onPressed, child: const Text('Filled Tonal')),
        OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
        TextButton(onPressed: onPressed, child: const Text('Text')),
      ],
    );
  }
}
```

## [ButtonStyle](https://api.flutter.dev/flutter/material/ButtonStyle-class.html)

> The visual properties that most buttons have in common.
>
> Buttons and their themes have a ButtonStyle property which defines the visual properties whose default values are to be overridden. The default values are defined by the individual button widgets and are typically based on overall theme's [ThemeData.colorScheme](https://api.flutter.dev/flutter/material/ThemeData/colorScheme.html) and [ThemeData.textTheme](https://api.flutter.dev/flutter/material/ThemeData/textTheme.html).
>
> All of the ButtonStyle properties are null by default.
>
> Many of the ButtonStyle properties are [MaterialStateProperty](https://api.flutter.dev/flutter/material/MaterialStateProperty-class.html) objects which resolve to different values depending on the button's state. For example the [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html) properties are defined with `MaterialStateProperty<Color>` and can resolve to different colors depending on if the button is pressed, hovered, focused, disabled, etc.
>
> These properties can override the default value for just one state or all of them. 

**Metheod 1**: We can set button styles using `StyleFrom`:

```dart
Widget _buildStyleFrom() {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(5.0),
        // ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(
            style: BorderStyle.none,
          ),
        ),
      ),
      onPressed: () => {},
      child: Text("Check Out"),
    );
  }
```

**Method 2**: using `MaterialStatePropertyAll, MaterialStateProperty.resolveWith`:

```dart
Widget _buildMaterialStateProperty() {
    return ElevatedButton(
      child: const Text("Material"),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
        fixedSize: const MaterialStatePropertyAll<Size>(Size(100, 100)),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.pressed)
              ? Colors.blue
              : Colors.red;
        }),
        shape: MaterialStateProperty.all(
          const CircleBorder(
            side: BorderSide(
              color: Colors.brown,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
```

or using `MaterialStateProperty.all(0)`:

```dart
Widget _buildLoginButton() {
    return Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200, //double.infinity
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Color(0xffFCB605)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35))),
              ),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
```

`MaterialState`

```dart
enum MaterialState {
  /// The state when the user drags their mouse cursor over the given widget.
  ///
  /// See: https://material.io/design/interaction/states.html#hover.
  hovered,

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  ///
  /// See: https://material.io/design/interaction/states.html#focus.
  focused,

  /// The state when the user is actively pressing down on the given widget.
  ///
  /// See: https://material.io/design/interaction/states.html#pressed.
  pressed,

  /// The state when this widget is being dragged from one place to another by
  /// the user.
  ///
  /// https://material.io/design/interaction/states.html#dragged.
  dragged,

  /// The state when this item has been selected.
  ///
  /// This applies to things that can be toggled (such as chips and checkboxes)
  /// and things that are selected from a set of options (such as tabs and radio buttons).
  ///
  /// See: https://material.io/design/interaction/states.html#selected.
  selected,

  /// The state when this widget overlaps the content of a scrollable below.
  ///
  /// Used by [AppBar] to indicate that the primary scrollable's
  /// content has scrolled up and behind the app bar.
  scrolledUnder,

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  ///
  /// See: https://material.io/design/interaction/states.html#disabled.
  disabled,

  /// The state when the widget has entered some form of invalid state.
  ///
  /// See https://material.io/design/interaction/states.html#usage.
  error,
}
```

## [FloatingActionButton](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html)

A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the [Scaffold.floatingActionButton](https://api.flutter.dev/flutter/material/Scaffold/floatingActionButton.html) field.

```dart
import 'package:flutter/material.dart';

class ExFAB extends StatelessWidget {
  const ExFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
```

## References

- [Complete Guide To Flutter Buttons](https://appmaking.com/flutter-buttons-example/)
- [New Buttons and Button Themes](https://docs.flutter.dev/release/breaking-changes/buttons)
- [Material Components widgets](https://docs.flutter.dev/ui/widgets/material)

