import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N74ProgressIndicatorScreen extends StatelessWidget {
  const N74ProgressIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.0.obs;
    final cw = 1.0.obs;
    final timer = Timer.periodic(const Duration(milliseconds: 300), (t) {
      c.value += 0.1;
      c.value = (c.value > 1) ? c.value = 0 : c.value;
    });
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Text("Default"),
              CircularProgressIndicator(),
              Center(
                child: LinearProgressIndicator(),
              ),
            ],
          )),
          Expanded(
            child: Obx(() => Stack(
                  children: [
                    Container(
                      color: Colors.yellow,
                    ),
                    Text("Determined"),
                    CircularProgressIndicator(
                      value: c.value,
                      strokeWidth: cw.value,
                    ),
                    Center(
                      child: LinearProgressIndicator(
                        value: c.value,
                      ),
                    ),
                    Positioned(
                      child: Slider(
                        value: cw.value,
                        onChanged: (v) => cw.value = v,
                        min: 1.0,
                        max: 10.0,
                        divisions: 9,
                        label: "${cw.value}",
                      ),
                      bottom: 10,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
