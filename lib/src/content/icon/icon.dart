// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBasic();
  }

  Widget _buildBasic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.autorenew,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.green,
          size: 30.0,
        ),
        Icon(
          Icons.navigate_next,
          color: Colors.blue,
          size: 36.0,
        ),
        Icon(FontAwesomeIcons.thumbsUp, color: Colors.red),
      ],
    );
  }

  Widget _buildFluentIcon() {
    return IconButton(
        // Use the FluentIcons + name of the icon you want
        icon: Icon(FluentIcons.access_time_24_regular),
        onPressed: () {
          print("Button pressed");
        });
  }
}
