# [Badge](https://api.flutter.dev/flutter/material/Badge-class.html)

> A Material Design "badge".
>
> A badge's [label](https://api.flutter.dev/flutter/material/Badge/label.html) conveys a small amount of information about its [child](https://api.flutter.dev/flutter/material/Badge/child.html), like a count or status. If the label is null then this is a "small" badge that's displayed as a [smallSize](https://api.flutter.dev/flutter/material/Badge/smallSize.html) diameter filled circle. Otherwise this is a [StadiumBorder](https://api.flutter.dev/flutter/painting/StadiumBorder-class.html) shaped "large" badge with height [largeSize](https://api.flutter.dev/flutter/material/Badge/largeSize.html).
>
> Badges are typically used to decorate the icon within a [BottomNavigationBarItem](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html) or a [NavigationRailDestination](https://api.flutter.dev/flutter/material/NavigationRailDestination-class.html) or a button's icon, as in [TextButton.icon](https://api.flutter.dev/flutter/material/TextButton/TextButton.icon.html). The badge's default configuration is intended to work well with a default sized (24) [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html).

## Examples

```dart
class ExBadge extends StatelessWidget {
  const ExBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Badge(
        // label: Text("233"),
        child: Icon(
          Icons.message,
          size: 32,
        ),
      ),
    );
  }
}
```

## Exercise

1. Build a message Icon with Badge, if message count == 0, show a small dot, if message count > 99, show three dots, otherwise show message count.