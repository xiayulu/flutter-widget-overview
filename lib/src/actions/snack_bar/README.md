# [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html)

> A lightweight message with an optional action which briefly displays at the bottom of the screen.
>
> To display a snack bar, call `ScaffoldMessenger.of(context).showSnackBar()`, passing an instance of [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html) that describes the message.
>
> To control how long the [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html) remains visible, specify a [duration](https://api.flutter.dev/flutter/material/SnackBar/duration.html).

## Basic Example

```dart
ElevatedButton(
  child: const Text('Show Snackbar'),
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Awesome Snackbar!'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  },
);
```

## Custom Styles

```dart
ElevatedButton(
  child: const Text('Show Snackbar'),
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Code to execute.
          },
        ),
        content: const Text('Awesome SnackBar!'),
        duration: const Duration(milliseconds: 1500),
        width: 280.0, // Width of the SnackBar.
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  },
);
```

