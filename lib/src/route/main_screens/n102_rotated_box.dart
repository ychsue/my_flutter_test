import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/data/lorem.dart';

class N102RotatedBoxScreen extends StatelessWidget {
  const N102RotatedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cRot = 0.0.obs;
    return Scaffold(
      appBar: AppBar(title: Text("RotatedBox")),
      body: Obx(
        () => Column(children: [
          ListTile(
            leading: Text("rotated angle"),
            title: Slider(
                value: cRot.value,
                onChanged: (v) => cRot.value = v,
                min: 0,
                max: 2 * math.pi),
          ),
          Expanded(
              child: Row(
            children: [
              RotatedBox(
                quarterTurns: (cRot.value / math.pi * 2).round(),
                child: Text("By RotatedBox"),
              ),
              Expanded(child: Text(lorem)),
              Transform.rotate(
                angle: cRot.value,
                child: Text("By Transform.rotate"),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
