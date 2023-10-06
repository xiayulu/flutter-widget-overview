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
        children: [
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.mail),
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
                if (!_formKey.currentState!.validate()) {
                  // Process data.
                  // handler error
                  return;
                }

                // api call
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
