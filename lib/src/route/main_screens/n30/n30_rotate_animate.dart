import 'dart:math';

import 'package:flutter/material.dart';

class N30RotateAnimate extends StatefulWidget {
  N30RotateAnimate({Key? key}) : super(key: key);

  @override
  _N30RotateAnimateState createState() => _N30RotateAnimateState();
}

class _N30RotateAnimateState extends State<N30RotateAnimate>
    with TickerProviderStateMixin {
  late AnimationController aniCtrler;
  late Animation<double> animation;

  @override
  void initState() {
    aniCtrler =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 2 * pi).animate(aniCtrler);
    aniCtrler.repeat();
    super.initState();
  }

  @override
  void dispose() {
    aniCtrler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ValueListenableBuilder(
        valueListenable: animation,
        builder: (ctx, value, child) => Transform.rotate(
          angle: value as double,
          child: child,
        ),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),
    );

    // Align(
    //   alignment: Alignment.center,
    //   child: ValueListenableBuilder(
    //     valueListenable: animation,
    //     builder: (ctx, value, child) => Transform.rotate(
    //       angle: value as double,
    //       child: child,
    //     ),
    //     child: Container(
    //       height: 200,
    //       width: 200,
    //       color: Colors.red,
    //     ),
    //   ),
    // );
  }
}
