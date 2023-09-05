# [NavigationBar](https://api.flutter.dev/flutter/material/NavigationBar-class.html)

> Navigation bars offer a persistent and convenient way to switch between primary destinations in an app.
>
> This widget does not adjust its size with the [ThemeData.visualDensity](https://api.flutter.dev/flutter/material/ThemeData/visualDensity.html).
>
> The [MediaQueryData.textScaleFactor](https://api.flutter.dev/flutter/widgets/MediaQueryData/textScaleFactor.html) does not adjust the size of this widget but rather the size of the [Tooltip](https://api.flutter.dev/flutter/material/Tooltip-class.html)s displayed on long presses of the destinations.
>
> The style for the icons and text are not affected by parent [DefaultTextStyle](https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html)s or [IconTheme](https://api.flutter.dev/flutter/widgets/IconTheme-class.html)s but rather controlled by parameters or the [NavigationBarThemeData](https://api.flutter.dev/flutter/material/NavigationBarThemeData-class.html).
>
> This widget holds a collection of destinations (usually [NavigationDestination](https://api.flutter.dev/flutter/material/NavigationDestination-class.html)s).

## Example

```dart
class ExNavigationBar extends StatefulWidget {
  const ExNavigationBar({super.key});

  @override
  State<ExNavigationBar> createState() => _ExNavigationBarState();
}

class _ExNavigationBarState extends State<ExNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Stack(children: [
              Icon(Icons.home),
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: Icon(
                  Icons.brightness_1,
                  size: 8.0,
                  color: Colors.redAccent,
                ),
              )
            ]),
            icon: Stack(children: [
              Icon(Icons.home),
              Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: Icon(
                  Icons.brightness_1,
                  size: 8.0,
                  color: Colors.redAccent,
                ),
              )
            ]),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'School',
          ),
        ],
      ),
      body: [
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
```

