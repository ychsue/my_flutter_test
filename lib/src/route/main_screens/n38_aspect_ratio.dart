import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N38AspectRatioScreen extends StatelessWidget {
  const N38AspectRatioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.2.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              Expanded(
                  child: Align(
                child: AspectRatio(
                  aspectRatio: c.value,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              )),
              Slider(
                  min: 0.2,
                  max: 5,
                  value: c.value,
                  onChanged: (v) {
                    c.value = v;
                  })
            ],
          )),
    );
  }
}
