import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N113GridViewScreen extends StatelessWidget {
  const N113GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cCrossSpacing = 0.0.obs;
    final cMainSpacing = 0.0.obs;
    final cMaxExtent = 100.0.obs;
    final random = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("cross spacing:"),
              title: Slider(
                value: cCrossSpacing.value,
                min: 0,
                max: 10,
                onChanged: (v) => cCrossSpacing.value = v,
              ),
            ),
            ListTile(
              leading: Text("main spacing:"),
              title: Slider(
                value: cMainSpacing.value,
                min: 0,
                max: 10,
                onChanged: (v) => cMainSpacing.value = v,
              ),
            ),
            ListTile(
              leading: Text("max extent:"),
              title: Slider(
                value: cMaxExtent.value,
                min: 100,
                max: 500,
                onChanged: (v) => cMaxExtent.value = v,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: cCrossSpacing.value,
                mainAxisSpacing: cMainSpacing.value,
                children: List.generate(
                  100,
                  (index) => Container(
                    color: Color.fromARGB(255, random.nextInt(255),
                        random.nextInt(255), random.nextInt(255)),
                    child: Text("$index ${(index == 0) ? 'count' : ''}"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.extent(
                crossAxisSpacing: cCrossSpacing.value,
                mainAxisSpacing: cMainSpacing.value,
                maxCrossAxisExtent: cMaxExtent.value,
                children: List.generate(
                  100,
                  (index) => Container(
                    color: Color.fromARGB(255, random.nextInt(255),
                        random.nextInt(255), random.nextInt(255)),
                    child: Text("$index ${(index == 0) ? 'extent' : ''}"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
