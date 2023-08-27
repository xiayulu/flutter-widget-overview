import 'package:flutter/material.dart';

class ExExPanded extends StatelessWidget {
  const ExExPanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 100,
          width: 50,
        ),
        // Expanded(
        //   child: Container(
        //     color: Colors.white,
        //     height: 100,
        //     child: Text("Expanded"),
        //   ),
        // ),
        Spacer(),
        Container(
          color: Colors.green,
          height: 100,
          width: 50,
        ),
      ],
    );
  }
}
