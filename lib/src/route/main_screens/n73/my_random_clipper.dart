import 'dart:math';

import 'package:flutter/material.dart';

class MyRandomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final w = size.width;
    final h = size.height;
    final rand = Random();

    for (var i = 0; i < 5; i++) {
      path.lineTo(rand.nextDouble() * w, rand.nextDouble() * h);
    }

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
