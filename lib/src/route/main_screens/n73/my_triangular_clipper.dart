import 'package:flutter/material.dart';

class MyTriangularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final w = size.width;
    final h = size.height;

    path.moveTo(0, h / 3);
    path.lineTo(w, h / 3);
    path.lineTo(w / 2, h * 2 / 3);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
