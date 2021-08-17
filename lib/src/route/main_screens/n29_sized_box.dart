import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N29SizedBoxScreen extends StatelessWidget {
  N29SizedBoxScreen({Key? key}) : super(key: key);
  final c = 100.0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Obx(() => SizedBox(
                  height: c.value,
                )),
            Flexible(
              child: Container(
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 200,
              child: Obx(() => Slider(
                    min: 100.0,
                    max: 300.0,
                    value: c.value,
                    onChanged: (v) {
                      c.value = v;
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
