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

## References

- https://docs.flutter.dev/ui/widgets/material