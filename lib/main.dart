import 'package:flutter/material.dart';
import 'package:lab/src/actions/Dismissible.dart';
import 'package:lab/src/actions/alert_dialog.dart';
import 'package:lab/src/container/align.dart';
import 'package:lab/src/layout/baseline.dart';
import 'package:lab/src/container/center.dart';
import 'package:lab/src/layout/column.dart';
import 'package:lab/src/container/container.dart';
import 'package:lab/src/layout/scafold.dart';
import 'package:lab/src/scroll/custom_scroll_view.dart';
import 'package:lab/src/layout/expanded.dart';
import 'package:lab/src/actions/gesture_detector.dart';
import 'package:lab/src/actions/interactive_viewer.dart';
import 'package:lab/src/container/limited_box.dart';
import 'package:lab/src/scroll/list_view.dart';
import 'package:lab/src/layout/row.dart';
import 'package:lab/src/scroll/single_scroll_view.dart';
import 'package:lab/src/container/sized_box.dart';
import 'package:lab/src/actions/snack_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Scaffold(
      //   body: Center(child: ExGestureDetector()),
      // ),
      home: ExScafold(),
    );
  }
}
