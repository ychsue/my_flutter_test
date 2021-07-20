import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n18/my_custom_painter_4_animation.dart';
import 'my_custom_painter.dart';

class N18CustomPaintScreen extends StatefulWidget {
  N18CustomPaintScreen({Key? key}) : super(key: key);

  @override
  _N18CustomPaintScreenState createState() => _N18CustomPaintScreenState();
}

class _N18CustomPaintScreenState extends State<N18CustomPaintScreen>
    with TickerProviderStateMixin {
  late Animation<double> rotAni;
  late AnimationController rotController;
  // late Tween<double> _rotTween;
  late CurveTween _rotTween;
  late void Function() rotListener;
  late void Function(AnimationStatus) rotStatusListener =
      (AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      rotController.repeat();
    } else if (status == AnimationStatus.dismissed) {
      rotController.forward();
    }
  };

  @override
  void initState() {
    super.initState();
    rotListener = () {
      setState(() {});
    };
    // _rotTween = Tween(begin: -pi, end: pi);
    _rotTween = CurveTween(curve: Curves.bounceIn);
    rotController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    // rotAni = _rotTween.animate(
    //     rotController) //這是 https://blog.codemagic.io/flutter-custom-painter/ 建議的寫法
    rotAni = rotController.drive(_rotTween)
      ..addListener(rotListener)
      ..addStatusListener(rotStatusListener);
    rotController.forward();
  }

  @override
  void dispose() {
    rotAni.removeListener(rotListener);
    rotAni.removeStatusListener(rotStatusListener);
    rotController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: CustomPaint(
              painter: MyCustomPainter(),
              child: Center(
                child: Text("This is a test"),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: CustomPaint(
              painter: MyCustomPainterForAnimation(th0: rotAni.value * 2 * pi),
            ),
          )
        ],
      ),
    );
  }
}
