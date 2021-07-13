import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n15/n15_inherited_model.dart';

class N15Child extends StatelessWidget {
  const N15Child({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(AbsN15.of(context)!.num.toString()),
      ),
    );
  }
}
