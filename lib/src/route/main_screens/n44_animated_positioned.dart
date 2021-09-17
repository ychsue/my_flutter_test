import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N44AnimatedPositionedScreen extends StatelessWidget {
  const N44AnimatedPositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 10.0.obs;
    return Scaffold(
        appBar: AppBar(),
        body: Obx(() => Column(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    AnimatedPositioned(
                      child: Container(
                        color: Colors.blue,
                        child: Text("Where am I?"),
                      ),
                      duration: const Duration(seconds: 1),
                      left: c.value,
                      width: MediaQuery.of(context).size.width / 2 - c.value,
                    ),
                  ],
                )),
                Slider(
                    max: MediaQuery.of(context).size.width / 2,
                    min: 10,
                    value: c.value,
                    onChanged: (v) {
                      c.value = v;
                    })
              ],
            )));
  }
}
