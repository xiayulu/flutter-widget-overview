import 'package:flutter/material.dart';

class ExInkWell extends StatefulWidget {
  const ExInkWell({super.key});

  @override
  State<ExInkWell> createState() => _ExInkWellState();
}

class _ExInkWellState extends State<ExInkWell> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child: InkWell(
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
            });
          },
        ),
      ),
    );
  }
}

class ExInkWellImage extends StatefulWidget {
  const ExInkWellImage({super.key});

  @override
  State<ExInkWellImage> createState() => _ExInkWellImageState();
}

class _ExInkWellImageState extends State<ExInkWellImage> {
  @override
  Widget build(BuildContext context) {
    Image img = Image.network(
        'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80');
    return Material(
      child: Ink.image(
        fit: BoxFit.fill,
        width: 300,
        height: 300,
        image: img.image,
        child: InkWell(
          onTap: () {
            print('image');
          },
          child: const Align(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'PUFFIN',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
