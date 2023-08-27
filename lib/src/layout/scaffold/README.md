#  [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

> Implements the basic Material Design visual layout structure.
>
> - appBar
> - body
> - bottomNavigationBar
> - drawer
> - endDrawer
> - bottomSheet
> - backgroundColor
> - floatingActionButton
> - persistentFooterButtons

```dart
import 'package:flutter/material.dart';

class ExScafold extends StatelessWidget {
  const ExScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Cart"),
        actions: [Icon(Icons.search)],
      ),
      backgroundColor: Color(0xFFf1f2f3),
      body: Center(
        child: Container(
          color: Colors.pinkAccent.shade100,
          child: Text("Flutter"),
        ),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      persistentFooterButtons: _persistentFooterButtons(),
      bottomSheet: _bottomSheet(),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
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
}
```