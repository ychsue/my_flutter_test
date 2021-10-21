import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n59/acf_with_layout_builder.dart';

import 'unconstrained_acf.dart';

class N59AnimatedCrossFadeScreen extends StatelessWidget {
  const N59AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c1stOne = true.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => GridView.count(
          crossAxisCount: 2,
          children: [
            Center(
              child: Switch(
                  value: c1stOne.value,
                  onChanged: (v) {
                    c1stOne.value = v;
                  }),
            ),
            ACFWithLayoutBuilder(is1stOne: c1stOne.value),
            UnConstrainedACF(is1stOne: c1stOne.value),
          ],
        ),
      ),
    );
  }
}
