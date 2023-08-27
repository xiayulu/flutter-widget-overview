// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:flutter/material.dart';

class ExScafold extends StatelessWidget {
  const ExScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Cart"),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      backgroundColor: Color(0xFFf1f2f3),
      // body: SingleChildScrollView(
      //   child: Container(
      //     height: 1000,
      //     color: Colors.pinkAccent.shade100,
      //     child: Text("Flutter"),
      //   ),
      // ),
      body:_buildBody(),
      drawer: _buildDrawer(),
      endDrawer: _buildDrawer(),
      persistentFooterButtons: _persistentFooterButtons(),
      bottomSheet: _bottomSheet(),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Container(
        height: 400,
        color: Color(Random().nextInt(0xFFFFFFFF)),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.accessible), label: 'accessible'),
      ],
    );
  }

  Widget _bottomSheet() {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      builder: (BuildContext context) {
        return Container(
          height: 60,
          color: Colors.cyan,
          child: Text('Bottom Sheet'),
          alignment: Alignment.center,
        );
      },
    );
  }

  List<Widget> _persistentFooterButtons() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    ];
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      child: Text('返回'),
      onPressed: () {
        print("hello");
      },
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
