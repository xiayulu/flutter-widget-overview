# AnimatedList

> A scrolling container that animates items when they are inserted or removed.
>
> This widget's [AnimatedListState](https://api.flutter.dev/flutter/widgets/AnimatedListState-class.html) can be used to dynamically insert or remove items. To refer to the [AnimatedListState](https://api.flutter.dev/flutter/widgets/AnimatedListState-class.html) either provide a [GlobalKey](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html) or use the static [of](https://api.flutter.dev/flutter/widgets/AnimatedList/of.html) method from an item's input callback.
>
> This widget is similar to one created by [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html).

## Example

- https://book.flutterchina.club/chapter6/animatedlist.html

```dart
class ExAnimatedList extends StatefulWidget {
  const ExAnimatedList({Key? key}) : super(key: key);

  @override
  State<ExAnimatedList> createState() => _ExAnimatedListState();
}

class _ExAnimatedListState extends State<ExAnimatedList> {
  var data = <String>[];
  int counter = 5;

  final globalKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    for (var i = 0; i < counter; i++) {
      data.add('${i + 1}');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedList(
          key: globalKey,
          initialItemCount: data.length,
          itemBuilder: (
            BuildContext context,
            int index,
            Animation<double> animation,
          ) {
            // animate
            return FadeTransition(
              opacity: animation,
              child: buildItem(context, index),
            );
          },
        ),
        buildAddBtn(),
      ],
    );
  }

  Widget buildAddBtn() {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: FloatingActionButton(
        onPressed: () {
          data.add('${++counter}');
          // update key
          globalKey.currentState!.insertItem(data.length - 1);
          print('add $counter');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildItem(context, index) {
    String str = data[index];
    return ListTile(
      key: ValueKey(str),
      title: Text(str),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => onDelete(context, index),
      ),
    );
  }

  void onDelete(context, index) {
    setState(() {
      globalKey.currentState!.removeItem(
        index,
        (context, animation) {
          var item = buildItem(context, index);
          print('remove ${data[index]}');
          data.removeAt(index);
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: const Interval(0.5, 1.0),
            ),
            child: SizeTransition(
              sizeFactor: animation,
              axisAlignment: 0.0,
              child: item,
            ),
          );
        },
        duration: Duration(milliseconds: 200),
      );
    });
  }
}
```

