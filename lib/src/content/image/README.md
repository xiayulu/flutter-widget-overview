# [Image Widget](https://api.flutter.dev/flutter/widgets/Image-class.html)

> A widget that displays an image.
>
> Several constructors are provided for the various ways that an image can be specified:
>
> - [Image.new](https://api.flutter.dev/flutter/widgets/Image/Image.html), for obtaining an image from an [ImageProvider](https://api.flutter.dev/flutter/painting/ImageProvider-class.html).
> - [Image.asset](https://api.flutter.dev/flutter/widgets/Image/Image.asset.html), for obtaining an image from an [AssetBundle](https://api.flutter.dev/flutter/services/AssetBundle-class.html) using a key.
> - [Image.network](https://api.flutter.dev/flutter/widgets/Image/Image.network.html), for obtaining an image from a URL.
> - [Image.file](https://api.flutter.dev/flutter/widgets/Image/Image.file.html), for obtaining an image from a [File](https://api.flutter.dev/flutter/dart-io/File-class.html).
> - [Image.memory](https://api.flutter.dev/flutter/widgets/Image/Image.memory.html), for obtaining an image from a [Uint8List](https://api.flutter.dev/flutter/dart-typed_data/Uint8List-class.html).
>
> The following image formats are supported: JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP. Additional formats may be supported by the underlying platform. Flutter will attempt to call platform API to decode unrecognized formats, and if the platform API supports decoding the image Flutter will be able to render it.
>
> To automatically perform pixel-density-aware asset resolution, specify the image using an [AssetImage](https://api.flutter.dev/flutter/painting/AssetImage-class.html) and make sure that a [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html), [WidgetsApp](https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html), or [MediaQuery](https://api.flutter.dev/flutter/widgets/MediaQuery-class.html) widget exists above the [Image](https://api.flutter.dev/flutter/widgets/Image-class.html) widget in the widget tree.

## Examples

```dart
class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue.shade100,
      child: Image(
        // image: NetworkImage(
        //   "https://cdn.pixabay.com/photo/2023/08/05/23/40/bird-8171927_1280.jpg",
        // ),
        image: AssetImage("assets/image/food0.png"),
        // fit: BoxFit.cover,
      ),
    );
  }
}
```

