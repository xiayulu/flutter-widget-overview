import 'package:flutter/material.dart';

class ExLayoutBuilder extends StatelessWidget {
  const ExLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 250) {
            return _buildRedContainer();
          } else {
            return _buildGreenContainer();
          }
        },
      ),
    );
  }

  Widget _buildRedContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildGreenContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.green,
      ),
    );
  }
}
