// ignore_for_file: prefer_const_constructors

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
          keyboardType: TextInputType.datetime,
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
