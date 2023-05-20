import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';


class SquareContainer extends RectangleComponent with TapCallbacks {
 static const speed = 0;
 static const squareSize = 128.0;
 static const indicatorSize = 6.0;

 static Paint red = BasicPalette.red.paint();

 SquareContainer(Vector2 position)
     : super(
  position: position,
  size: Vector2.all(squareSize),
  anchor: Anchor.centerLeft,
 );

 @override
 Future<void> onLoad() async {
  super.onLoad();
  add(
   RectangleComponent(
    position: size / 2,
    size: Vector2.all(indicatorSize),
    anchor: Anchor.center,
    paint: red,
   ),
  );
 }

 @override
 void onTap(TapUpEvent event) {
  removeFromParent();
  event.handled = true;
 }
}
