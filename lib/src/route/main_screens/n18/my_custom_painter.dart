import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    Offset p1 = Offset(0, size.height / 2);
    Offset p2 = Offset(size.width, size.height / 2);

    canvas.drawLine(p1, p2, paint);

    var path = Path();
    path.moveTo(0, size.height / 3);
    path.lineTo(size.width / 3, size.height / 3);
    path.lineTo(size.width / 2, size.height / 4);
    path.lineTo(size.width * 2 / 3, size.height / 2);
    path.lineTo(size.width / 2, size.height * 3 / 4);
    path.lineTo(size.width / 3, size.height * 2 / 3);
    path.lineTo(0, size.height * 2 / 3);

    canvas.drawPath(path, paint);

    var origin = Offset(size.width / 4, size.height / 4);
    canvas.drawCircle(origin, min(size.width, size.height) / 4, paint);

    paint.color = Colors.yellow;
    var path2 = Path();
    path2.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2), radius: 100));
    canvas.drawPath(path2, paint);

    var slides = 5;
    var radius = 100;
    var center = Offset(size.width / 2, size.height / 2);
    var path3 = Path();
    paint.color = Colors.red;
    path3.moveTo(radius + center.dx, center.dy);
    for (var i = 1; i <= slides; i++) {
      path3.lineTo(center.dx + radius * cos(pi * 2 * i / slides),
          center.dy + radius * sin(2 * pi * i / slides));
    }
    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
