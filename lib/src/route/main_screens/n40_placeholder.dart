import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N40PlaceholderScreen extends StatelessWidget {
  const N40PlaceholderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 1.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Flexible(
                    child: Placeholder(),
                    flex: 1,
                  ),
                  Flexible(
                    child: Placeholder(),
                    flex: c.value,
                  ),
                ],
              )),
              Slider(
                  value: c.value.toDouble(),
                  min: 1,
                  max: 10,
                  divisions: 11,
                  onChanged: (v) {
                    c.value = v.floor();
                  })
            ],
          )),
    );
  }
}
