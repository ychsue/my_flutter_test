import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n79/my_btn_transition.dart';

class N79AnimatedWidgetScreen extends StatefulWidget {
  N79AnimatedWidgetScreen({Key? key}) : super(key: key);

  @override
  _N79AnimatedWidgetScreenState createState() =>
      _N79AnimatedWidgetScreenState();
}

class _N79AnimatedWidgetScreenState extends State<N79AnimatedWidgetScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> scale;
  late Animation<double> width;
  late AnimationController actrl;

  @override
  void initState() {
    actrl =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    scale = Tween<double>(begin: 0.5, end: 1.5).animate(actrl);
    width = Tween<double>(begin: 1, end: 18.0).animate(actrl);
    actrl.repeat();
    super.initState();
  }

  @override
  void dispose() {
    actrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScaleTransition(
          scale: scale,
          child: Container(
            color: Colors.green,
            width: 200,
            height: 300,
          ),
        ),
        Expanded(
          child: MyBtnTransition(myWidth: width),
        ),
      ],
    );
  }
}
