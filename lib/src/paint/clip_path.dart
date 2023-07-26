import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ExClipPath extends StatelessWidget {
  const ExClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        color: Colors.red,
      ),
      clipper: CustomClipPath(),
    );
  }
}
