import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N35SpacerScreen extends StatelessWidget {
  const N35SpacerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 1.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Obx(() => Spacer(flex: c.value)),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                color: Colors.red,
                child: Obx(() => Slider(
                      min: 1,
                      max: 10,
                      divisions: 9,
                      value: c.value.toDouble(),
                      onChanged: (v) {
                        c.value = v.floor();
                      },
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
