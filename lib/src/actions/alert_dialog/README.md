# [AlertDialog](https://api.flutter.dev/flutter/material/AlertDialog-class.html)

> A Material Design alert dialog.
>
> An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.
>
> For dialogs that offer the user a choice between several options, consider using a [SimpleDialog](https://api.flutter.dev/flutter/material/SimpleDialog-class.html).
>
> Typically passed as the child widget to [showDialog](https://api.flutter.dev/flutter/material/showDialog.html), which displays the dialog.

**Example**

```dart
class ExAlertDialog extends StatelessWidget {
  const ExAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMyDialog(context);
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text('Show Dialog'),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cheat Sheet'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
```

