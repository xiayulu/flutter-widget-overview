// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:lab/src/actions/Dismissible.dart';
import 'package:lab/src/actions/alert_dialog/alert_dialog.dart';
import 'package:lab/src/actions/buttons/button_style.dart';
import 'package:lab/src/actions/buttons/buttons.dart';
import 'package:lab/src/actions/buttons/fab.dart';
import 'package:lab/src/container/container/align.dart';
import 'package:lab/src/utils/future_builder.dart';
import 'package:lab/src/layout/stack/stack.dart';
import 'package:lab/src/content/image/image.dart';
import 'package:lab/src/content/text/rich_text.dart';
import 'package:lab/src/content/text/text.dart';
import 'package:lab/src/form/check_box.dart';
import 'package:lab/src/form/form.dart';
import 'package:lab/src/form/text_field.dart';
import 'package:lab/src/layout/baseline/baseline.dart';
import 'package:lab/src/container/container/center.dart';
import 'package:lab/src/layout/flex/column.dart';
import 'package:lab/src/container/container/container.dart';
import 'package:lab/src/layout/constraint/constraint.dart';
import 'package:lab/src/layout/flex/flex.dart';
import 'package:lab/src/layout/flow/flow.dart';
import 'package:lab/src/layout/flow/wrap.dart';
import 'package:lab/src/layout/scaffold/scaffold.dart';
import 'package:lab/src/paint/clip_path.dart';
import 'package:lab/src/paint/clip_rect.dart';
import 'package:lab/src/paint/decorated_box.dart';
import 'package:lab/src/paint/inkwell.dart';
import 'package:lab/src/scroll/custom_scroll_view.dart';
import 'package:lab/src/layout/flex/expanded.dart';
import 'package:lab/src/actions/gesture_detector/gesture_detector.dart';
import 'package:lab/src/actions/interactive_viewer/interactive_viewer.dart';
import 'package:lab/src/container/limited_box/limited_box.dart';
import 'package:lab/src/scroll/list_view.dart';
import 'package:lab/src/layout/flex/row.dart';
import 'package:lab/src/scroll/single_scroll_view.dart';
import 'package:lab/src/container/container/sized_box.dart';
import 'package:lab/src/actions/snack_bar/snack_bar.dart';

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
        body: ExInteractiveViewer(),
      ),
    );
  }
}
