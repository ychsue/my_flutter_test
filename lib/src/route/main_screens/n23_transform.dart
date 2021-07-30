import 'dart:math';

import 'package:flutter/material.dart';

class N23TransformScreen extends StatelessWidget {
  const N23TransformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        // ..setEntry(3, 3, 2)
        // ..setEntry(0, 3, -100)
        ..rotateX(-pi / 2)
        ..rotateZ(-pi / 2)
        ..rotateY(pi / 2), //它是按照矩陣相乘的順序，而非按照作用的順序來排]
      // ..setEntry(3, 2, 0.01),
      // ..setEntry(0, 3, 0),
      alignment: FractionalOffset.center,
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Text("hello"),
          ),
        ),
      ),
    );
  }
}
