import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomPainterForAnimation extends CustomPainter {
  final double th0;

  MyCustomPainterForAnimation({required this.th0});

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 100;
    var sides = 3;
    var center = Offset(size.width / 2, size.height / 2);
    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(center.dx + radius * cos(th0), center.dy + radius * sin(th0));
    for (var i = 1; i < sides; i++) {
      path.lineTo(center.dx + radius * cos(th0 + 2 * pi * i / sides),
          center.dy + radius * sin(th0 + 2 * pi * i / sides));
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
