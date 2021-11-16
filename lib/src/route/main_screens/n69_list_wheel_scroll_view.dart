import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class N69ListWheelScrollViewScreen extends StatelessWidget {
  const N69ListWheelScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cDR = 1.0.obs;
    final cOffAxis = 0.0.obs;
    final cUM = false.obs; //UseMagnifier
    final ciPer = 0.003.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 42,
                children: [
                  for (var i = 0; i < 20; i++)
                    Container(
                      color: Colors.amber,
                      child: Center(child: Text("$i")),
                    )
                ],
                diameterRatio: cDR.value,
                offAxisFraction: cOffAxis.value,
                useMagnifier: cUM.value,
                magnification: 2.0,
                perspective: ciPer.value,
              ),
            ),
            Row(
              children: [
                Text('Diameter Ratio: '),
                Expanded(
                  child: Slider(
                    label: '${cDR.value}',
                    value: cDR.value,
                    onChanged: (v) => cDR.value = v,
                    min: 0.5,
                    max: 2.5,
                    divisions: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('OffAxis Fraction: '),
                Expanded(
                  child: Slider(
                    label: '${cOffAxis.value}',
                    value: cOffAxis.value,
                    onChanged: (v) => cOffAxis.value = v,
                    min: -0.5,
                    max: 1.5,
                    divisions: 20,
                  ),
                ),
              ],
            ),
            SwitchListTile(
                title: Text('Use Magnifier'),
                value: cUM.value,
                onChanged: (v) => cUM.value = v),
            Row(
              children: [
                Text('Perspective: '),
                Expanded(
                  child: Slider(
                    label: '${ciPer.value}',
                    value: ciPer.value,
                    onChanged: (v) => ciPer.value = v,
                    min: 0.0 + 1e-10,
                    max: 0.01,
                    divisions: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PerspectiveData {
  final double v;
  final String s;

  PerspectiveData({required this.v, required this.s});
}
