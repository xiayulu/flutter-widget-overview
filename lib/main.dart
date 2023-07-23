import 'package:flutter/material.dart';
import 'package:lab/src/core/Dismissible.dart';
import 'package:lab/src/core/alert_dialog.dart';
import 'package:lab/src/core/align.dart';
import 'package:lab/src/core/baseline.dart';
import 'package:lab/src/core/center.dart';
import 'package:lab/src/core/column.dart';
import 'package:lab/src/core/container.dart';
import 'package:lab/src/core/expanded.dart';
import 'package:lab/src/core/gesture_detector.dart';
import 'package:lab/src/core/interactive_viewer.dart';
import 'package:lab/src/core/row.dart';
import 'package:lab/src/core/sized_box.dart';
import 'package:lab/src/core/snack_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: ExBaseLine()),
      ),
    );
  }
}
