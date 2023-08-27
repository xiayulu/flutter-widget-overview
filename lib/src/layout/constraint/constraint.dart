// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExConstrainedBox extends StatelessWidget {
  ExConstrainedBox({super.key});

  final _redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return _buildUnConstraint();
  }

  Widget _buildBasic() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 100.0,
        maxHeight: 120,
        maxWidth: 250,
      ),
      child: Container(
        height: 50.0,
        width: 300,
        child: _redBox,
      ),
    );
  }

  Widget _buildMultiConstraint() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 100.0,
        maxWidth: 300,
        minHeight: 0,
        maxHeight: 50.0,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 50.0,
          maxWidth: 200,
          minHeight: 100,
          maxHeight: 100.0,
        ),
        child: _redBox,
      ),
    );
  }

  Widget _buildUnConstraint() {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
      child: UnconstrainedBox(
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
          child: _redBox,
        ),
      ),
    );
  }
}
