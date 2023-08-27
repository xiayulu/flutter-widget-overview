# [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)

> A widget that positions its children relative to the edges of its box.
>
> - This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom.
>
> - Each child of a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget is either *positioned* or *non-positioned*. Positioned children are those wrapped in a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget that has at least one non-null property. 
> - In a stack layout, the children are positioned on top of each other in the order in which they appear in the child list. First, the non-positioned children (those with null values for top, right, bottom, and left) are laid out and initially placed in the upper-left corner of the stack. The stack is then sized to enclose all of the non-positioned children. If there are no non-positioned children, the stack becomes as large as possible.
> - Next, the positioned children are laid out. If a child has top and bottom values that are both non-null, the child is given a fixed height determined by subtracting the sum of the top and bottom values from the height of the stack. Similarly, if the child has right and left values that are both non-null, the child is given a fixed width derived from the stack's width. Otherwise, the child is given unbounded constraints in the non-fixed dimensions.

## Basic Example

> - alignment

```dart
Stack(
  // alignment: Alignment.centerLeft,
  children: [
    Container(
      height: 300,
      width: 300,
      color: Colors.blue[100],
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.blue[300],
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue[600],
    ),
  ],
)
```

## [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html)

```dart
Stack(
  children: [
    Positioned(
      top: 0,
      bottom: 0,
      child: Container(
        height: 300,
        width: 300,
        color: Colors.blue[100],
      ),
    ),
    Positioned(
      bottom: 0,
      right: -50,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue[600],
      ),
    ),
  ],
)
```



