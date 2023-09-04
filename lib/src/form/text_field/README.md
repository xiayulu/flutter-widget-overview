# [TextField](https://api.flutter.dev/flutter/material/TextField-class.html)

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

## Example

```dart
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
    _controller.text = "123";
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
          obscureText: false,
          autofocus: true,
          cursorWidth: 1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            prefixIcon: Icon(Icons.key),
          ),
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: [
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

## Change Focus

```dart
class ExTextFieldFocus extends StatefulWidget {
  const ExTextFieldFocus({super.key});

  @override
  State<ExTextFieldFocus> createState() => _ExTextFieldFocusState();
}

class _ExTextFieldFocusState extends State<ExTextFieldFocus> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  void initState() {
    super.initState();
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            focusNode: focusNode1,
            decoration: InputDecoration(labelText: "input1"),
          ),
          TextField(
            focusNode: focusNode2,
            decoration: InputDecoration(labelText: "input2"),
          ),
          Builder(
            builder: (BuildContext ctx) {
              return Column(
                children: [
                  ElevatedButton(
                    child: Text("Focus Input2"),
                    onPressed: () {
                      //change focus from TextField1 to TextField2
                      // method1:
                      FocusScope.of(context).requestFocus(focusNode2);
                      // method2:
                      // focusScopeNode ??= FocusScope.of(context);
                      // focusScopeNode?.requestFocus(focusNode2);
                    },
                  ),
                  ElevatedButton(
                    child: Text("hide keyboard"),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
```

