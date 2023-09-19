import 'package:flutter/material.dart';

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
      barrierDismissible: true,
      // barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cheat Sheet'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancel'),
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
