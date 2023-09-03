# [CustomScrollView](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)

> A [ScrollView](https://api.flutter.dev/flutter/widgets/ScrollView-class.html) that creates custom scroll effects using [slivers](https://api.flutter.dev/flutter/widgets/CustomScrollView/slivers.html).
>
> A [CustomScrollView](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) lets you supply [slivers](https://api.flutter.dev/flutter/widgets/CustomScrollView/slivers.html) directly to create various scrolling effects, such as lists, grids, and expanding headers. For example, to create a scroll view that contains an expanding app bar followed by a list and a grid, use a list of three slivers: [SliverAppBar](https://api.flutter.dev/flutter/material/SliverAppBar-class.html), [SliverList](https://api.flutter.dev/flutter/widgets/SliverList-class.html), and [SliverGrid](https://api.flutter.dev/flutter/widgets/SliverGrid-class.html).
>
> [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)s in these [slivers](https://api.flutter.dev/flutter/widgets/CustomScrollView/slivers.html) must produce [RenderSliver](https://api.flutter.dev/flutter/rendering/RenderSliver-class.html) objects.
>
> To control the initial scroll offset of the scroll view, provide a [controller](https://api.flutter.dev/flutter/widgets/ScrollView/controller.html) with its [ScrollController.initialScrollOffset](https://api.flutter.dev/flutter/widgets/ScrollController/initialScrollOffset.html) property set.

**Slivers and Related Scrollable Widgets**

| Sliver Name               | Related Scrollable Widget     |
| ------------------------- | ----------------------------- |
| SliverList                | ListView                      |
| SliverFixedExtentList     | ListView with`itemExtent`     |
| SliverPrototypeExtentList | ListView with `prototypeItem` |
| SliverAnimatedList        | AnimatedList                  |
| SliverGrid                | GridView                      |
| SliverFillViewport        | PageView                      |

**Silver Utils**

| Sliver Name            | Usage                                             |
| ---------------------- | ------------------------------------------------- |
| SliverAppBar           | Like `AppBar`                                     |
| SliverToBoxAdapter     | An adapter，can transger `RenderBox` as  `Sliver` |
| SliverPersistentHeader | Sticky header                                     |

**Silver Wappers**

| Sliver Name                     | Related RenderBox Widget |
| ------------------------------- | ------------------------ |
| SliverPadding                   | Padding                  |
| SliverVisibility、SliverOpacity | Visibility、Opacity      |
| SliverFadeTransition            | FadeTransition           |
| SliverLayoutBuilder             | LayoutBuilder            |

## Example

If we want to combine  two list, we can use CustomView

```dart
Widget _buildTwoListView() {
  var listView = ListView.builder(
    itemCount: 20,
    itemBuilder: (_, index) => ListTile(title: Text('$index')),
  );
  return Column(
    children: [
      Expanded(child: listView),
      Divider(color: Colors.grey),
      Expanded(child: listView),
    ],
  );
}
```

Using `CustomScrollView`

```dart
Widget _buildTwoSliverList() {
  var listView = SliverFixedExtentList(
    itemExtent: 56,
    delegate: SliverChildBuilderDelegate(
      (_, index) => ListTile(title: Text('$index')),
      childCount: 10,
    ),
  );

  return CustomScrollView(
    slivers: [
      listView,
      listView,
    ],
  );
}
```

## Scrollable Page

```dart
Widget _buildScrollablePage() {
  return Material(
    child: CustomScrollView(
      slivers: [
        SliverAppBar(
          // pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Demo'),
            background: Image.asset(
              "assets/image/food0.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Color(Random().nextInt(0xffffff)).withOpacity(0.5),
                child: Text('list item $index'),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    ),
  );
}
```

