import 'package:flutter/material.dart';

class ExExPanded extends StatelessWidget {
  const ExExPanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          // color: Colors.blue,
          // height: 100,
          // width: 50,
          child: Icon(Icons.settings),
        ),
        // Expanded(
        //   child: Container(
        //     color: Colors.white,
        //     height: 100,
        //     child: Container(
        //       color: Colors.red,
        //     ),
        //   ),
        // ),
        SizedBox(
          width: 16,
        ),
        Text("Settings"),
        Spacer(),
        Container(
          // color: Colors.green,
          // height: 100,
          // width: 50,
          child: Icon(Icons.navigate_next),
        ),
      ],
    );
  }
}
