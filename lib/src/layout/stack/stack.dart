import 'package:flutter/material.dart';

class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 500,
      child: _buildPositioned(),
    );
  }

  Widget _buildBasic() {
    return Stack(
      // fit: StackFit.passthrough,
      // alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.blue[600],
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.blue[100],
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.blue[300],
        ),
      ],
    );
  }

  Widget _buildPositioned() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue[300],
        ),
        // Positioned(
        //   top: 0,
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     color: Colors.blue[100],
        //   ),
        // ),
        Positioned(
          height: 50,
          width: 50,
          right: -20,
          top: -20,
          child: CircleAvatar(
            backgroundColor: Colors.blue[600],
          ),
        ),
      ],
    );
  }
}
