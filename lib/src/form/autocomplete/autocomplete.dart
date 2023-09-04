import 'package:flutter/material.dart';

/// Flutter code sample for [Autocomplete] that shows how to fetch the options
/// from a remote API.

const Duration fakeAPIDuration = Duration(seconds: 1);

class ExAutocompleteAsync extends StatefulWidget {
  const ExAutocompleteAsync({super.key});

  @override
  State<ExAutocompleteAsync> createState() => _ExAutocompleteAsyncState();
}

class _ExAutocompleteAsyncState extends State<ExAutocompleteAsync> {
  // The query currently being searched for. If null, there is no pending
  // request.
  String? _searchingWithQuery;

  // The most recent options received from the API.
  late Iterable<String> _lastOptions = <String>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
              'Type below to autocomplete the following possible results: ${_FakeAPI._kOptions}.'),
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) async {
              _searchingWithQuery = textEditingValue.text;
              final Iterable<String> options =
                  await _FakeAPI.search(_searchingWithQuery!);

              // If another search happened after this one, throw away these options.
              // Use the previous options intead and wait for the newer request to
              // finish.
              if (_searchingWithQuery != textEditingValue.text) {
                return _lastOptions;
              }

              _lastOptions = options;
              return options;
            },
            onSelected: (String selection) {
              debugPrint('You just selected $selection');
            },
          ),
        ],
      ),
    );
  }
}

// Mimics a remote API.
class _FakeAPI {
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  // Searches the options, but injects a fake "network" delay.
  static Future<Iterable<String>> search(String query) async {
    await Future<void>.delayed(fakeAPIDuration); // Fake 1 second delay.
    if (query == '') {
      return const Iterable<String>.empty();
    }
    return _kOptions.where((String option) {
      return option.contains(query.toLowerCase());
    });
  }
}
