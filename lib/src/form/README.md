# Form Widgets

## Form

An optional container for grouping together multiple form field widgets (e.g. [TextField](https://api.flutter.dev/flutter/material/TextField-class.html) widgets).

Each individual form field should be wrapped in a [FormField](https://api.flutter.dev/flutter/widgets/FormField-class.html) widget, with the [Form](https://api.flutter.dev/flutter/widgets/Form-class.html) widget as a common ancestor of all of those. Call methods on [FormState](https://api.flutter.dev/flutter/widgets/FormState-class.html) to save, reset, or validate each [FormField](https://api.flutter.dev/flutter/widgets/FormField-class.html) that is a descendant of this [Form](https://api.flutter.dev/flutter/widgets/Form-class.html). To obtain the [FormState](https://api.flutter.dev/flutter/widgets/FormState-class.html), you may use [Form.of](https://api.flutter.dev/flutter/widgets/Form/of.html) with a context whose ancestor is the [Form](https://api.flutter.dev/flutter/widgets/Form-class.html), or pass a [GlobalKey](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html) to the [Form](https://api.flutter.dev/flutter/widgets/Form-class.html) constructor and call [GlobalKey.currentState](https://api.flutter.dev/flutter/widgets/GlobalKey/currentState.html).

```dart
import 'package:flutter/material.dart';

class ExForm extends StatefulWidget {
  const ExForm({super.key});

  @override
  State<ExForm> createState() => _ExFormState();
}

class _ExFormState extends State<ExForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  print("ok");
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
```

## [TextField](https://api.flutter.dev/flutter/material/TextField-class.html)

> A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.
>
> - The text field calls the [onChanged](https://api.flutter.dev/flutter/material/TextField/onChanged.html) callback whenever the user changes the text in the field. If the user indicates that they are done typing in the field (e.g., by pressing a button on the soft keyboard), the text field calls the [onSubmitted](https://api.flutter.dev/flutter/material/TextField/onSubmitted.html) callback.
>
> - To control the text that is displayed in the text field, use the [controller](https://api.flutter.dev/flutter/material/TextField/controller.html). For example, to set the initial value of the text field, use a [controller](https://api.flutter.dev/flutter/material/TextField/controller.html) that already contains some text. The [controller](https://api.flutter.dev/flutter/material/TextField/controller.html) can also control the selection and composing region (and to observe changes to the text, selection, and composing region).
>
> - By default, a text field has a [decoration](https://api.flutter.dev/flutter/material/TextField/decoration.html) that draws a divider below the text field. You can use the [decoration](https://api.flutter.dev/flutter/material/TextField/decoration.html) property to control the decoration, for example by adding a label or an icon. If you set the [decoration](https://api.flutter.dev/flutter/material/TextField/decoration.html) property to null, the decoration will be removed entirely, including the extra padding introduced by the decoration to save space for the labels.
>
> - To integrate the [TextField](https://api.flutter.dev/flutter/material/TextField-class.html) into a [Form](https://api.flutter.dev/flutter/widgets/Form-class.html) with other [FormField](https://api.flutter.dev/flutter/widgets/FormField-class.html) widgets, consider using [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html).
>
> - When the widget has focus, it will prevent itself from disposing via its underlying [EditableText](https://api.flutter.dev/flutter/widgets/EditableText-class.html)'s [AutomaticKeepAliveClientMixin.wantKeepAlive](https://api.flutter.dev/flutter/widgets/AutomaticKeepAliveClientMixin/wantKeepAlive.html) in order to avoid losing the selection. Removing the focus will allow it to be disposed.
>
> - Remember to call [TextEditingController.dispose](https://api.flutter.dev/flutter/foundation/ChangeNotifier/dispose.html) of the [TextEditingController](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html) when it is no longer needed. This will ensure we discard any resources used by the object.

**Example**

```dart
import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  const ExTextField({super.key});

  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _controller,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
```

## [Checkbox](https://api.flutter.dev/flutter/material/Checkbox-class.html)

> - The checkbox itself does not maintain any state. Instead, when the state of the checkbox changes, the widget calls the [onChanged](https://api.flutter.dev/flutter/material/Checkbox/onChanged.html) callback. Most widgets that use a checkbox will listen for the [onChanged](https://api.flutter.dev/flutter/material/Checkbox/onChanged.html) callback and rebuild the checkbox with a new [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) to update the visual appearance of the checkbox.
> - The checkbox can optionally display three values - true, false, and null - if [tristate](https://api.flutter.dev/flutter/material/Checkbox/tristate.html) is true. When [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) is null a dash is displayed. By default [tristate](https://api.flutter.dev/flutter/material/Checkbox/tristate.html) is false and the checkbox's [value](https://api.flutter.dev/flutter/material/Checkbox/value.html) must be true or false.

- https://juejin.cn/post/7104032045340295182

```dart
import 'package:flutter/material.dart';

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



## References

- https://docs.flutter.dev/ui/widgets/material