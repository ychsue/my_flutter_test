import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N50AnimatedOpacityScreen extends StatelessWidget {
  const N50AnimatedOpacityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                ),
                Obx(() => AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      opacity: c.value,
                      child: Container(
                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(8.0), //此設定對 color 無效
                        color: Colors.yellow,
                      ),
                    ))
              ],
            ),
          ),
          Obx(() => Slider(
              value: c.value,
              max: 1.0,
              min: 0.0,
              onChanged: (v) {
                c.value = v;
              }))
        ],
      ),
    );
  }
}
