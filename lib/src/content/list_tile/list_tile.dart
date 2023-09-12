// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExListTile extends StatelessWidget {
  const ExListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildListExample2();
  }

  Widget _buildListExample() {
    return ListView(
      children: [
        Card(child: ListTile(title: Text('One-line ListTile'))),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('One-line with trailing widget'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 56.0),
            title: Text('Two-line ListTile'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text('Three-line ListTile'),
            subtitle:
                Text('A sufficiently long subtitle warrants three lines.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    );
  }

  Widget _buildListExample2() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(child: Text('A')),
          title: Text('Headline'),
          subtitle: Text('Supporting text'),
          trailing: Icon(Icons.favorite_rounded),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(child: Text('B')),
          title: Text('Headline'),
          subtitle: Text(
              'Longer supporting text to demonstrate how the text wraps and how the leading and trailing widgets are centered vertically with the text.'),
          trailing: Icon(Icons.favorite_rounded),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(child: Text('C')),
          title: Text('Headline'),
          subtitle: Text(
              "Longer supporting text to demonstrate how the text wraps and how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text."),
          trailing: Icon(Icons.favorite_rounded),
          isThreeLine: true,
        ),
        Divider(height: 0),
      ],
    );
  }
}

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const CustomListItemExample(),
    );
  }
}

/// This sample shows ListTile's textColor and iconColor
/// can use MaterialStateColor color to change the color
/// of the text and icon when the ListTile is enabled,
/// selected, or disabled.
class ListTileMaterialExample extends StatefulWidget {
  const ListTileMaterialExample({super.key});

  @override
  State<ListTileMaterialExample> createState() =>
      _ListTileMaterialExampleState();
}

class _ListTileMaterialExampleState extends State<ListTileMaterialExample> {
  bool _selected = false;
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile Sample')),
      body: Center(
        child: ListTile(
          enabled: _enabled,
          selected: _selected,
          onTap: () {
            setState(() {
              // This is called when the user toggles the switch.
              _selected = !_selected;
            });
          },
          // This sets text color and icon color to red when list tile is disabled and
          // green when list tile is selected, otherwise sets it to black.
          iconColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.green;
            }
            return Colors.black;
          }),
          // This sets text color and icon color to red when list tile is disabled and
          // green when list tile is selected, otherwise sets it to black.
          textColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.green;
            }
            return Colors.black;
          }),
          leading: const Icon(Icons.person),
          title: const Text('Headline'),
          subtitle: Text('Enabled: $_enabled, Selected: $_selected'),
          trailing: Switch(
            onChanged: (bool? value) {
              // This is called when the user toggles the switch.
              setState(() {
                _enabled = value!;
              });
            },
            value: _enabled,
          ),
        ),
      ),
    );
  }
}

/// This sample shows ListTile.titleAlignment can be used to configure
/// the leading and trailing widgets alignment relative to
/// the title and subtitle widgets.
class ListTileAlignmentExample extends StatefulWidget {
  const ListTileAlignmentExample({super.key});

  @override
  State<ListTileAlignmentExample> createState() =>
      _ListTileAlignmentExampleState();
}

class _ListTileAlignmentExampleState extends State<ListTileAlignmentExample> {
  ListTileTitleAlignment? titleAlignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile.titleAlignment Sample')),
      body: Column(
        children: <Widget>[
          const Divider(),
          ListTile(
            titleAlignment: titleAlignment,
            leading: Checkbox(
              value: true,
              onChanged: (bool? value) {},
            ),
            title: const Text('Headline Text'),
            subtitle: const Text(
                'Tapping on the trailing widget will show a menu that allows you to change the title alignment. The title alignment is set to threeLine by default if `ThemeData.useMaterial3` is true. Otherwise, defaults to titleHeight.'),
            trailing: PopupMenuButton<ListTileTitleAlignment>(
              onSelected: (ListTileTitleAlignment? value) {
                setState(() {
                  titleAlignment = value;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<ListTileTitleAlignment>>[
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.threeLine,
                  child: Text('threeLine'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.titleHeight,
                  child: Text('titleHeight'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.top,
                  child: Text('top'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.center,
                  child: Text('center'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.bottom,
                  child: Text('bottom'),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

///  If the way ListTile pads and positions its elements isn't quite
/// what you're looking for, it's easy to create custom list items
/// with a combination of other widgets, such as Rows and Columns.
class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.viewCount,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    required this.title,
    required this.user,
    required this.viewCount,
  });

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}

class CustomListItemExample extends StatelessWidget {
  const CustomListItemExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom List Item Sample')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 106.0,
        children: <CustomListItem>[
          CustomListItem(
            user: 'Flutter',
            viewCount: 999000,
            thumbnail: Container(
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            title: 'The Flutter YouTube Channel',
          ),
          CustomListItem(
            user: 'Dash',
            viewCount: 884000,
            thumbnail: Container(
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            title: 'Announcing Flutter 1.0',
          ),
        ],
      ),
    );
  }
}
