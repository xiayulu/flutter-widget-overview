// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab/src/actions/Dismissible.dart';
import 'package:lab/src/actions/alert_dialog.dart';
import 'package:lab/src/actions/buttons.dart';
import 'package:lab/src/actions/fab.dart';
import 'package:lab/src/container/align.dart';
import 'package:lab/src/container/future_builder.dart';
import 'package:lab/src/form/check_box.dart';
import 'package:lab/src/form/form.dart';
import 'package:lab/src/form/text_field.dart';
import 'package:lab/src/layout/baseline.dart';
import 'package:lab/src/container/center.dart';
import 'package:lab/src/layout/column.dart';
import 'package:lab/src/container/container.dart';
import 'package:lab/src/layout/flex.dart';
import 'package:lab/src/layout/scafold.dart';
import 'package:lab/src/paint/clip_path.dart';
import 'package:lab/src/paint/clip_rect.dart';
import 'package:lab/src/paint/decorated_box.dart';
import 'package:lab/src/paint/inkwell.dart';
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
    return MaterialApp(
      // home: ExScafold(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter Built-in Widgets"),
        ),
        body: Center(child: ExSizedBox()),
      ),
    );
  }
}
