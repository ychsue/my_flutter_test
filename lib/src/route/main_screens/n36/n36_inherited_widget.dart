import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n36/info_child.dart';
import 'package:test2/src/route/main_screens/n36/info_i_w.dart';
import 'package:get/get.dart';

class N36InheritedWidgetScreen extends StatelessWidget {
  const N36InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              Expanded(
                child: InfoIW(
                  child: InfoChild(),
                  score: c.value,
                ),
              ),
              Slider(
                value: c.value.toDouble(),
                min: 0,
                max: 100,
                divisions: 101,
                onChanged: (v) {
                  c.value = v.floor();
                },
              )
            ],
          )),
    );
  }
}
