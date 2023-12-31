// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:lab/src/actions/alert_dialog/alert_dialog.dart';
import 'package:lab/src/actions/buttons/button_style.dart';
import 'package:lab/src/actions/buttons/buttons.dart';
import 'package:lab/src/actions/buttons/fab.dart';
import 'package:lab/src/actions/dismissable/dismissible.dart';
import 'package:lab/src/container/container/align.dart';
import 'package:lab/src/content/badge/badge.dart';
import 'package:lab/src/content/card/card.dart';
import 'package:lab/src/content/icon/icon.dart';
import 'package:lab/src/content/list_tile/list_tile.dart';
import 'package:lab/src/form/autocomplete/autocomplete.dart';
import 'package:lab/src/form/radio/radio.dart';
import 'package:lab/src/layout/layout_builder/layout_builder.dart';
import 'package:lab/src/layout/navigation_bar/navigation_bar.dart';
import 'package:lab/src/scroll/animated_list/animated_list.dart';
import 'package:lab/src/scroll/grid_view/grid_view.dart';
import 'package:lab/src/scroll/page_view/page_view.dart';
import 'package:lab/src/scroll/tabbar_view/tabbar_view.dart';
import 'package:lab/src/utils/future_builder.dart';
import 'package:lab/src/layout/stack/stack.dart';
import 'package:lab/src/content/image/image.dart';
import 'package:lab/src/content/text/rich_text.dart';
import 'package:lab/src/content/text/text.dart';
import 'package:lab/src/form/checkbox/check_box.dart';
import 'package:lab/src/form/form/form.dart';
import 'package:lab/src/form/text_field/text_field.dart';
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
import 'package:lab/src/scroll/custom_scroll_view/custom_scroll_view.dart';
import 'package:lab/src/layout/flex/expanded.dart';
import 'package:lab/src/actions/gesture_detector/gesture_detector.dart';
import 'package:lab/src/actions/interactive_viewer/interactive_viewer.dart';
import 'package:lab/src/container/limited_box/limited_box.dart';
import 'package:lab/src/scroll/list_view/list_view.dart';
import 'package:lab/src/layout/flex/row.dart';
import 'package:lab/src/scroll/single_child_scroll_view/single_child_scroll_view.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter Built-in Widgets"),
        ),
        body: ExAutocompleteAsync(),
      ),
    );
  }
}
