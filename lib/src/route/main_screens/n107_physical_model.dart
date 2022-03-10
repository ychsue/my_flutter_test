import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N107PhysicalModelScreen extends StatelessWidget {
  const N107PhysicalModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cOpacity = 1.0.obs;
    final cColor = Colors.blue.obs;
    final cShadowColor = Colors.purple.obs;
    final cElevation = 8.0.obs;
    final cBorderRadius = 45.0.obs;
    return Scaffold(
      appBar: AppBar(title: Text("PhysicalModel -> shadow?")),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("Opacity: "),
              title: Slider(
                  value: cOpacity.value,
                  onChanged: (v) => cOpacity.value = v,
                  min: 0,
                  max: 1),
            ),
            ListTile(
              leading: Text("Elevation: "),
              title: Slider(
                  value: cElevation.value,
                  onChanged: (v) => cElevation.value = v,
                  min: 0,
                  max: 20),
            ),
            ListTile(
              leading: Text("BorderRadius: "),
              title: Slider(
                  value: cBorderRadius.value,
                  onChanged: (v) => cBorderRadius.value = v,
                  min: 0,
                  max: 90),
            ),
            PhysicalModel(
              color: cColor.value,
              shadowColor: cShadowColor.value,
              elevation: cElevation.value,
              borderRadius: BorderRadius.circular(cBorderRadius.value),
              child: Opacity(
                opacity: cOpacity.value,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                ),
              ),
            ),
            Text("opacity: ${cOpacity.value},\n " +
                "color: ${cColor.value},\n " +
                "shadowColor: ${cShadowColor.value} \n" +
                "elevation: ${cElevation.value} \n" +
                "borderRadius: ${cBorderRadius.value}"),
          ],
        ),
      ),
    );
  }
}
