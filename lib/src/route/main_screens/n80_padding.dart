import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N80PaddingScreen extends StatelessWidget {
  const N80PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(width: 8),
              ),
              child: Container(
                padding: EdgeInsets.all(c.value),
                margin: EdgeInsetsDirectional.all(c.value),
                color: Colors.yellow,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Slider(
              label: "Margin Outer, Padding Inner",
              value: c.value,
              onChanged: (v) => c.value = v,
              max: 50.0,
              min: 0.0,
              divisions: 50,
            ),
          ],
        ),
      ),
    );
  }
}
