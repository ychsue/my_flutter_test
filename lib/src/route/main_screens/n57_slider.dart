import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N57SliderScreen extends StatelessWidget {
  const N57SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cFS = 10.0.obs;
    final cWH = [50.0, 100.0].obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "I am Here",
                    style: TextStyle(fontSize: cFS.value),
                  ),
                ),
                width: cWH[1],
                height: cWH[0],
              ),
              Slider.adaptive(
                  value: cFS.value,
                  min: 10,
                  max: 30,
                  divisions: 20,
                  label: "${cFS.value}",
                  onChanged: (v) {
                    cFS.value = v;
                  }),
              RangeSlider(
                  min: 20,
                  max: 500,
                  values: RangeValues(cWH[0], cWH[1]),
                  onChanged: (v) {
                    cWH[0] = v.start;
                    cWH[1] = v.end;
                  }),
            ],
          )),
    );
  }
}
