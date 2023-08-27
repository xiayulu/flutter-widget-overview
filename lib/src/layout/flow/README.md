# Flow Layout

## [Flow](https://api.flutter.dev/flutter/widgets/Flow-class.html)

> A widget that sizes and positions children efficiently, according to the logic in a [FlowDelegate](https://api.flutter.dev/flutter/rendering/FlowDelegate-class.html).
>
> Flow layouts are optimized for repositioning children using transformation matrices.
>
> The flow container is sized independently from the children by the [FlowDelegate.getSize](https://api.flutter.dev/flutter/rendering/FlowDelegate/getSize.html) function of the delegate. The children are then sized independently given the constraints from the [FlowDelegate.getConstraintsForChild](https://api.flutter.dev/flutter/rendering/FlowDelegate/getConstraintsForChild.html) function.
>
> Rather than positioning the children during layout, the children are positioned using transformation matrices during the paint phase using the matrices from the [FlowDelegate.paintChildren](https://api.flutter.dev/flutter/rendering/FlowDelegate/paintChildren.html) function. The children can be repositioned efficiently by only *repainting* the flow, which happens without the children being laid out again (contrast this with a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html), which does the sizing and positioning together during layout).
>
> The most efficient way to trigger a repaint of the flow is to supply an animation to the constructor of the [FlowDelegate](https://api.flutter.dev/flutter/rendering/FlowDelegate-class.html). The flow will listen to this animation and repaint whenever the animation ticks, avoiding both the build and layout phases of the pipeline.

## [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html)

> A widget that displays its children in multiple horizontal or vertical runs.
>
> A [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) lays out each child and attempts to place the child adjacent to the previous child in the main axis, given by [direction](https://api.flutter.dev/flutter/widgets/Wrap/direction.html), leaving [spacing](https://api.flutter.dev/flutter/widgets/Wrap/spacing.html) space in between. If there is not enough space to fit the child, [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) creates a new *run* adjacent to the existing children in the cross axis.
>
> After all the children have been allocated to runs, the children within the runs are positioned according to the [alignment](https://api.flutter.dev/flutter/widgets/Wrap/alignment.html) in the main axis and according to the [crossAxisAlignment](https://api.flutter.dev/flutter/widgets/Wrap/crossAxisAlignment.html) in the cross axis.
>
> The runs themselves are then positioned in the cross axis according to the [runSpacing](https://api.flutter.dev/flutter/widgets/Wrap/runSpacing.html) and [runAlignment](https://api.flutter.dev/flutter/widgets/Wrap/runAlignment.html).