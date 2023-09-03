# [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)

> A scrollable list of widgets arranged linearly.
>
> [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html) is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html).
>
> If non-null, the [itemExtent](https://api.flutter.dev/flutter/widgets/ListView/itemExtent.html) forces the children to have the given extent in the scroll direction.
>
> If non-null, the [prototypeItem](https://api.flutter.dev/flutter/widgets/ListView/prototypeItem.html) forces the children to have the same extent as the given widget in the scroll direction.
>
> Specifying an [itemExtent](https://api.flutter.dev/flutter/widgets/ListView/itemExtent.html) or an [prototypeItem](https://api.flutter.dev/flutter/widgets/ListView/prototypeItem.html) is more efficient than letting the children determine their own extent because the scrolling machinery can make use of the foreknowledge of the children's extent to save work, for example when the scroll position changes drastically.
>
> You can't specify both [itemExtent](https://api.flutter.dev/flutter/widgets/ListView/itemExtent.html) and [prototypeItem](https://api.flutter.dev/flutter/widgets/ListView/prototypeItem.html), only one or none of them.

## Basic Example

```dart
class ExListView extends StatelessWidget {
  const ExListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Color(Random().nextInt(0xffffff)).withOpacity(1),
          child: Center(
            child: Text('Entry $index'),
          ),
        );
      },
    );
  }
}
```

## Constructors

There are four options for constructing a [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html):

1. The default constructor takes an explicit [List](https://api.flutter.dev/flutter/dart-core/List-class.html) of children. This constructor is appropriate for list views with a small number of children because constructing the [List](https://api.flutter.dev/flutter/dart-core/List-class.html) requires doing work for every child that could possibly be displayed in the list view instead of just those children that are actually visible.
2. The [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) constructor takes an [IndexedWidgetBuilder](https://api.flutter.dev/flutter/widgets/IndexedWidgetBuilder.html), which builds the children on demand. This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.
3. The [ListView.separated](https://api.flutter.dev/flutter/widgets/ListView/ListView.separated.html) constructor takes two [IndexedWidgetBuilder](https://api.flutter.dev/flutter/widgets/IndexedWidgetBuilder.html)s: `itemBuilder` builds child items on demand, and `separatorBuilder` similarly builds separator children which appear in between the child items. This constructor is appropriate for list views with a fixed number of children.
4. The [ListView.custom](https://api.flutter.dev/flutter/widgets/ListView/ListView.custom.html) constructor takes a [SliverChildDelegate](https://api.flutter.dev/flutter/widgets/SliverChildDelegate-class.html), which provides the ability to customize additional aspects of the child model. For example, a [SliverChildDelegate](https://api.flutter.dev/flutter/widgets/SliverChildDelegate-class.html) can control the algorithm used to estimate the size of children that are not actually visible.

```dart
ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: 20,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Color(Random().nextInt(0xffffff)).withOpacity(1),
      child: Center(
        child: Text('Entry $index'),
      ),
    );
  },
  separatorBuilder: (context, index) => Divider(
    color: Colors.red,
  ),
)
```

## With Header[^1]

```dart
@override
Widget build(BuildContext context) {
  return Column(children: <Widget>[
    ListTile(title:Text("Header")),
    Expanded(
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      }),
    ),
  ]);
}
```

## Infinite Scrolling

```dart
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##"; // tailing loading text
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _words.length,
      itemBuilder: (context, index) {
        //如果到了表尾
        if (_words[index] == loadingTag) {
          //不足100条，继续获取数据
          if (_words.length - 1 < 100) {
            //获取数据
            _retrieveData();
            //加载时显示loading
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(strokeWidth: 2.0),
              ),
            );
          } else {
            //已经加载了100条数据，不再获取数据。
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text(
                "没有更多了",
                style: TextStyle(color: Colors.grey),
              ),
            );
          }
        }
        //显示单词列表项
        return ListTile(title: Text(_words[index]));
      },
      separatorBuilder: (context, index) => Divider(height: .0),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList(),
        );
      });
    });
  }
}
```

## References

- [^1]: [ListView](https://book.flutterchina.club/chapter6/listview.html#_6-3-6-%E5%AE%9E%E4%BE%8B-%E6%97%A0%E9%99%90%E5%8A%A0%E8%BD%BD%E5%88%97%E8%A1%A8)

