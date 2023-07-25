# Layout Widgets

## [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html)

> An application that uses Material Design.
>
> - home: The Root Widget
> - routes
> - initialRoute
> - builder: Called before build widget, useful to set font, theme, etc.
> - title:  App name show on task bar
> - theme
> - locale

##  [Scafold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

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

## Row

The **Row** widget takes a list of widgets and arranges them horizontally. You will likely use this widget a lot when making layouts in your code.

```dart
Row(
  children: [
    ElevatedButton(
      child: const Text('Widget 1'),
      onPressed: () => Navigator.pushNamed(context, '/second'),
    ),
    ElevatedButton(
      child: const Text('Widget 2'),
      onPressed: () => Navigator.pushNamed(context, '/third'),
    ),
    ElevatedButton(
      child: const Text('Widget 3'),
      onPressed: () => Navigator.pushNamed(context, '/fourth'),
    ),
  ],
);
```

## Column

The **Column** widget allows you to arrange a list of widgets vertically, similar to how the **Row** widget aligns them horizontally.

```dart
Column(
  children: [
    ElevatedButton(
      child: const Text('Widget 1'),
      onPressed: () => Navigator.pushNamed(context, '/second'),
    ),
    ElevatedButton(
      child: const Text('Widget 2'),
      onPressed: () => Navigator.pushNamed(context, '/third'),
    ),
    ElevatedButton(
      child: const Text('Widget 3'),
      onPressed: () => Navigator.pushNamed(context, '/fourth'),
    ),
  ],
);
```

## Expanded

The **Expanded** widget expands the child of a **Row** or **Column** to fill any available space.

For example, you can use it to build a UI that fills the screen with just three containers or pictures. Theoretically, we can just specify their heights, but remember that there are different screen sizes for different devices, including tablets such as iPad devices. The expanded widget can help you create a more responsive design that can easily fit all screen sizes.

```dart
Row(
  children: <Widget>[
    Container(
      color: Colors.blue,
      height: 100,
      width: 50,
    ),
    Expanded(
      child: Container(
        color: Colors.amber,
        height: 100,
      ),
    ),
    Container(
      color: Colors.green,
      height: 100,
      width: 50,
    ),
  ],
)
```

> **Tips**
>
> If you do not need a child, use `Spacer`.

## 