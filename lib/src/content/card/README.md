# [Card](https://api.flutter.dev/flutter/material/Card-class.html)

> A Material Design card: a panel with slightly rounded corners and an elevation shadow.
>
> A card is a sheet of [Material](https://api.flutter.dev/flutter/material/Material-class.html) used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.

## Examples

```dart
Card(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      const ListTile(
        leading: Icon(Icons.album),
        title: Text('The Enchanted Nightingale'),
        subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            child: const Text('BUY TICKETS'),
            onPressed: () {/* ... */},
          ),
          const SizedBox(width: 8),
          TextButton(
            child: const Text('LISTEN'),
            onPressed: () {/* ... */},
          ),
          const SizedBox(width: 8),
        ],
      ),
    ],
  ),
)
```

