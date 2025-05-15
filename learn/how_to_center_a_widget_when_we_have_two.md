# How to center a widget when we have two ?

[Flutter](../../tags/flutter.md)

> If you prefer [video tutorial](https://youtu.be/CNc5afG86Uw)

Let's say we have two widgets,

- one is a `Text` which must be center aligned.
- we will have just a loader before this.

![how_to_center_a_widget_when_we_have_two.md](/assets/images/how_to_center_a_widget_when_we_have_two.png)

## Early stage

If you are at an early stage of flutter, you might be thinking let's put inside a `Row`.

```dart
Row(
  children: <Widget>[
    if (loading) CircularProgressIndicator(strokeWidth: 4.0),
    Text("Submit", style: TextStyle(fontSize: 16)),
  ],
),
```

But if we run this we will find out the text gets shifted right when `CircleProgressIndicator` is visible.

Now you might be thinking of using stack widget

```dart
Stack(
  children: [
    if (loading)
      Align(  //or positioned widget with  left
        alignment: Alignment(-.25, 0),
        child: CircularProgressIndicator(),
      ),
    Center(child: Text("Submit")),
  ],
),
```

But if we re-size our layout, we can see this is not quite the thing we want.

While This is just a Text widget with a loader, you might be thinking of `RichText` with a `WidgetSpan` ?
Well this will lead you into the same alignment shift issue.

Often it won't be about just the Text "submit" all the time.

## Got tricks

At this current situation , you know the `Visibility`/`Opacity` widget. So you add another widget to the right with a 0 opacity or visibility false with maintaining position which will be always invisible.

```dart
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Visibility.maintain(
      visible: loading,
      child: CircularProgressIndicator(),
    ),
    Text("Submit"),
    Visibility.maintain(
      visible: false,
      child: CircularProgressIndicator(), //
    ),
  ],
),
```

Or

```dart
Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      AnimatedOpacity(
        duration: Durations.short2,
        opacity: loading ? 1 : 0,
        child: CircularProgressIndicator(),
      ),
      Text("Submit"),
      Opacity(
        opacity: 0,
        child: CircularProgressIndicator(), //
      ),
    ],
),
```

It works, Well flutter offer us better way to solve this.

## Solution

We're gonna use the `CompositedTransformTarget` widget, which gives us the coordinates/offset where it has been painted.
And we have `CompositedTransformFollower` which follows the `CompositedTransformTarget` widget.
How do they get connected or share information ? Well, we need a `LayerLink` instance.

Then we can use `targetAlignment`, `followerAlignment`, `offset` to position the follower the way we want.

Just one more important thing, `CompositedTransformTarget` must be layout first.

```dart
//just to have multiple widgets, you can use Row/Column based on available space you've.
Stack(
  children: [
    Center(
      child: CompositedTransformTarget(
        link: layerLink,
        child: Text("Submit"),
      ),
    ),
    if (loading)
      CompositedTransformFollower(
        link: layerLink,
        targetAnchor: Alignment.centerLeft,
        followerAnchor: Alignment.centerRight,
        offset: Offset(-8, 0),
        child: CircularProgressIndicator(),
      ),
  ],
),
```

You can create many cool animations like my [portfolio][portfolio], Telegram scroll effects and many more.

If you are seeking more fine control, you might like [Flow][flow], [CustomSingleChildLayout][CSCL], [CustomMultiChildLayout][CMCL] widgets, which are for little advance use-case.

Find more about [CompositedTransformFollower][CTT] and [CompositedTransformTarget][CTF].

[portfolio]: https://github.com/yeasin50/portfolio/blob/master/packages/stackoverflow_stats/lib/src/presentation/home/home_page_delegate.dart
[flow]: https://api.flutter.dev/flutter/widgets/Flow-class.html
[CSCL]: https://api.flutter.dev/flutter/widgets/CustomSingleChildLayout-class.html
[CMCL]: https://api.flutter.dev/flutter/widgets/CustomMultiChildLayout-class.html
[CTT]: https://api.flutter.dev/flutter/widgets/CompositedTransformTarget-class.html
[CTF]: https://api.flutter.dev/flutter/widgets/CompositedTransformFollower-class.html
