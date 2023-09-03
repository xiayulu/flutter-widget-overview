# [PageView](https://api.flutter.dev/flutter/widgets/PageView-class.html)

> A scrollable list that works page by page.
>
> Each child of a page view is forced to be the same size as the viewport.
>
> You can use a [PageController](https://api.flutter.dev/flutter/widgets/PageController-class.html) to control which page is visible in the view. In addition to being able to control the pixel offset of the content inside the [PageView](https://api.flutter.dev/flutter/widgets/PageView-class.html), a [PageController](https://api.flutter.dev/flutter/widgets/PageController-class.html) also lets you control the offset in terms of pages, which are increments of the viewport size.
>
> The [PageController](https://api.flutter.dev/flutter/widgets/PageController-class.html) can also be used to control the [PageController.initialPage](https://api.flutter.dev/flutter/widgets/PageController/initialPage.html), which determines which page is shown when the [PageView](https://api.flutter.dev/flutter/widgets/PageView-class.html) is first constructed, and the [PageController.viewportFraction](https://api.flutter.dev/flutter/widgets/PageController/viewportFraction.html), which determines the size of the pages as a fraction of the viewport size.

## Basic Example

```dart
class ExPageView extends StatelessWidget {
  const ExPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView.builder(
      controller: controller,
      itemCount: 4,
      // scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
        alignment: Alignment.center,
        child: Text(
          "Page $index",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
```

## Keep Alive[^1]

A cache util class:

```dart
class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if(oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
```
Cached page:
```dart
PageView.builder(
      itemCount: 4,
      // scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => index & 1 == 1
          ? Container(
              color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
              alignment: Alignment.center,
              child: Text(
                "Page $index",
                style: TextStyle(fontSize: 36),
              ),
            )
          : KeepAliveWrapper(
              child: Container(
                color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
                alignment: Alignment.center,
                child: Text(
                  "Page $index",
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
    )
```

## References

- [^1]: [可滚动组件子项缓存](https://book.flutterchina.club/chapter6/keepalive.html#_6-8-2-keepalivewrapper)

