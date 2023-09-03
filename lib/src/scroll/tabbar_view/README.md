# TabBar View

> A page view that displays the widget which corresponds to the currently selected tab.
>
> This widget is typically used in conjunction with a [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html).
>
> If a [TabController](https://api.flutter.dev/flutter/material/TabController-class.html) is not provided, then there must be a [DefaultTabController](https://api.flutter.dev/flutter/material/DefaultTabController-class.html) ancestor.
>
> The tab controller's [TabController.length](https://api.flutter.dev/flutter/material/TabController/length.html) must equal the length of the [children](https://api.flutter.dev/flutter/material/TabBarView/children.html) list and the length of the [TabBar.tabs](https://api.flutter.dev/flutter/material/TabBar/tabs.html) list.

## Example

```dart
class ExTabBarView extends StatelessWidget {
  const ExTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ["StarCraft 2", "LoL", "GTA5"];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Colors.black87,
            // indicator: BoxDecoration(
            //   color: Colors.amber.shade100
            // ),
            indicatorColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList(),
        ),
      ),
    );
  }
}
```

