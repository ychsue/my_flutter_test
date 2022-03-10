import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N105BaselineScreen extends StatelessWidget {
  const N105BaselineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cHeight = 100.0.obs;
    final cType = TextBaseline.ideographic.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Baseline"),
      ),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("baseline height:"),
              title: Slider(
                onChanged: (value) => cHeight.value = value,
                value: cHeight.value,
                min: 100,
                max: 300,
              ),
            ),
            ListTile(
              leading: Text("Baseline Type:"),
              title: Row(
                children: [
                  Text("${cType.value.toString()}"),
                  ElevatedButton(
                    onPressed: () => cType.value = TextBaseline.alphabetic,
                    child: Text("alphabetic"),
                  ),
                  ElevatedButton(
                    onPressed: () => cType.value = TextBaseline.ideographic,
                    child: Text("ideographic"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Baseline(
                        baseline: cHeight.value,
                        baselineType: cType.value,
                        child: Text('The Baseline: ghijklmnopqrstuvwxyz'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Baseline(
                        baseline: cHeight.value,
                        baselineType: cType.value,
                        child: Text('The Baseline: 那麼English mixed with 中文呢?'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            color: Colors.pink,
                            height: cHeight.value,
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
